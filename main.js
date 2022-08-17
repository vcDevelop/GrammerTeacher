let isConfigUpdate = false;
let reader = new FileReader();
document.getElementById("lab").style.visibility = "hidden";
document.getElementById("okbutton").style.visibility = "hidden";
async function uploadToS3Bucket(stream, credential, cd) {
    try {
        if (!window.AWS) {
            return
        }
        if (!isConfigUpdate) {
            window.AWS.config.update(({ region: credential.region }));
            isConfigUpdate = true;
        }
        let s3 = new window.AWS.S3({
            credentials: new window.AWS.Credentials({
                apiVersion: 'latest',
                accessKeyId: credential.accressKeyId,
                secretAccessKey: credential.secretAccessKey,
                signatureVersion: credential.signatureVersion,
                region: credential.region,
                Bucket: credential.Bucket
            })
        });
        let s;
        var playlist,vtitle;
        // descrip=document.getElementById("desc").value;
        vtitle=document.getElementById("videoT").value;
        let uploadItem = await s3.upload({
            Bucket:credential.Bucket,
            Key:vtitle,//sample name
            ContentType: document.getElementById("fileToUpload").files[0].type,
            Body: stream
        }).on("httpUploadProgress", function (progress) {
            console.log("progress=>", progress)
            document.getElementById("lab").style.visibility = "visible";
            cd(getUploadingProgress(progress.loaded, progress.total));
        }).promise();
        console.log("uploadItem=>", uploadItem)
        s=uploadItem.Location;
        playlist=document.getElementById("playlist").value;
        // document.cookie = "Details="+descrip;
        document.cookie = "username="+s;
        document.cookie = "vtitle="+vtitle;
        document.cookie = "playlist="+playlist;
        document.getElementById("okbutton").style.visibility = "visible";
        document.getElementById("lab").style.visibility = "hidden";
        return uploadItem;
    }
    catch (error) {
        console.log(error)
    }

}

function getUploadingProgress(uploadSize, totalSize) {
    let uploadProgress = (uploadSize / totalSize) * 100;
    return Number(uploadProgress.toFixed(0));
}

async function uploadMedia() {
    let credentialRequest = {
        accressKeyId: 'AKIASXCBMXPY3PDMFGWU',
        secretAccessKey: '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',
        signatureVersion: 'v4',
        region: 'us-east-1',
        Bucket: 'upload-video-trial'
    };
    let mediaStreamRequest = getFile(document.getElementById("fileToUpload").files[0])
    const [mediaStream] = await Promise.all([
        mediaStreamRequest
    ])
    await uploadToS3Bucket(mediaStream, credentialRequest, (progress) => {
        console.log(progress)
    })
}

async function getFile(file) {
    return new Promise((resolve, reject) => {
        let reader = new FileReader();
        reader.onload = (e) => {
            resolve(e.target.result);
        };
        reader.onerror = (err) => {
            reject(false);
        };
        reader.readAsArrayBuffer(file);
    });
};