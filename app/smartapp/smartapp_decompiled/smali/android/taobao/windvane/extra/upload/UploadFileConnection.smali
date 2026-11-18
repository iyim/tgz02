.class public Landroid/taobao/windvane/extra/upload/UploadFileConnection;
.super Ljava/lang/Object;
.source "UploadFileConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0xea60

.field private static final DEFAULT_READ_TIMEOUT:I = 0xea60

.field public static final ERROE_CODE_FAIL:I = 0x1

.field public static final ERROE_MSG_FAIL:Ljava/lang/String; = "FAIL"

.field public static final ERR_CODE_TOKEN_INVALID:I = 0x2

.field public static final ERR_MSG_TOKEN_INVALID:Ljava/lang/String; = "TOKEN_IS_INVALID"

.field private static final TAG:Ljava/lang/String; = "UploadFileConnection"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private mFileExt:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mListener:Landroid/taobao/windvane/connect/HttpConnectListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/taobao/windvane/connect/HttpConnectListener<",
            "Landroid/taobao/windvane/extra/upload/UploadFileData;",
            ">;"
        }
    .end annotation
.end field

.field private tryNum:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/connect/HttpConnectListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/connect/HttpConnectListener<",
            "Landroid/taobao/windvane/extra/upload/UploadFileData;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p3, p0, Landroid/taobao/windvane/extra/upload/UploadFileConnection;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    .line 61
    iput-object p1, p0, Landroid/taobao/windvane/extra/upload/UploadFileConnection;->mFilePath:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Landroid/taobao/windvane/extra/upload/UploadFileConnection;->mFileExt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wv-a-8.5.0-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v1}, Landroid/taobao/windvane/util/PhoneInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Landroid/taobao/windvane/connect/HttpConnector;

    invoke-direct {v1}, Landroid/taobao/windvane/connect/HttpConnector;-><init>()V

    invoke-static {v0}, Landroid/taobao/windvane/extra/mtop/ApiUrlManager;->getUploadTokenUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/taobao/windvane/connect/HttpConnector;->syncConnect(Ljava/lang/String;)Landroid/taobao/windvane/connect/HttpResponse;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Landroid/taobao/windvane/connect/HttpResponse;->isSuccess()Z

    move-result v2

    const-string/jumbo v3, "tryNum"

    const-string v4, "accessToken"

    const-string/jumbo v5, "utf-8"

    const-string v6, "UploadFileConnection"

    const/4 v7, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/taobao/windvane/connect/HttpResponse;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 73
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Landroid/taobao/windvane/connect/HttpResponse;->getData()[B

    move-result-object v1

    invoke-direct {v2, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :try_start_1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get upload token success, content="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v7

    .line 78
    :goto_0
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 80
    :cond_0
    :goto_1
    new-instance v1, Landroid/taobao/windvane/connect/api/ApiResponse;

    invoke-direct {v1}, Landroid/taobao/windvane/connect/api/ApiResponse;-><init>()V

    .line 81
    invoke-virtual {v1, v2}, Landroid/taobao/windvane/connect/api/ApiResponse;->parseResult(Ljava/lang/String;)Landroid/taobao/windvane/connect/api/ApiResponse;

    .line 82
    iget-boolean v2, v1, Landroid/taobao/windvane/connect/api/ApiResponse;->success:Z

    if-eqz v2, :cond_1

    .line 83
    iget-object v1, v1, Landroid/taobao/windvane/connect/api/ApiResponse;->data:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/taobao/windvane/extra/upload/UploadFileConnection;->accessToken:Ljava/lang/String;

    .line 86
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/taobao/windvane/extra/upload/UploadFileConnection;->tryNum:I

    .line 91
    :cond_1
    iget-object v1, p0, Landroid/taobao/windvane/extra/upload/UploadFileConnection;->accessToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "get upload token fail, accessToken is empty"

    .line 93
    invoke-static {v6, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/extra/upload/UploadFileConnection;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    const-string v2, "TOKEN_IS_INVALID"

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/connect/HttpConnectListener;->onError(ILjava/lang/String;)V

    :cond_3
    return-void

    .line 101
    :cond_4
    iget-object v1, p0, Landroid/taobao/windvane/extra/upload/UploadFileConnection;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v1, :cond_5

    .line 102
    invoke-virtual {v1}, Landroid/taobao/windvane/connect/HttpConnectListener;->onStart()V

    .line 104
    :cond_5
    iget-object v1, p0, Landroid/taobao/windvane/extra/upload/UploadFileConnection;->accessToken:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/taobao/windvane/extra/mtop/ApiUrlManager;->getUploadUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/extra/upload/UploadFileConnection;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/taobao/windvane/extra/upload/UploadFileConnection;->uploadFile(Ljava/lang/String;Ljava/lang/String;)Landroid/taobao/windvane/connect/HttpResponse;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/taobao/windvane/connect/HttpResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/taobao/windvane/connect/HttpResponse;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_8

    .line 108
    :try_start_2
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/taobao/windvane/connect/HttpResponse;->getData()[B

    move-result-object v0

    invoke-direct {v1, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    .line 109
    :try_start_3
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upload file success, response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v7

    .line 113
    :goto_2
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 115
    :cond_6
    :goto_3
    new-instance v0, Landroid/taobao/windvane/connect/api/ApiResponse;

    invoke-direct {v0}, Landroid/taobao/windvane/connect/api/ApiResponse;-><init>()V

    .line 116
    invoke-virtual {v0, v1}, Landroid/taobao/windvane/connect/api/ApiResponse;->parseResult(Ljava/lang/String;)Landroid/taobao/windvane/connect/api/ApiResponse;

    move-result-object v0

    .line 117
    iget-boolean v1, v0, Landroid/taobao/windvane/connect/api/ApiResponse;->success:Z

    if-eqz v1, :cond_8

    .line 118
    iget-object v0, v0, Landroid/taobao/windvane/connect/api/ApiResponse;->data:Lorg/json/JSONObject;

    if-eqz v0, :cond_8

    :try_start_4
    const-string/jumbo v1, "status"

    .line 120
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "uploadInfo"

    .line 121
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 123
    new-instance v1, Landroid/taobao/windvane/extra/upload/UploadFileData;

    invoke-direct {v1}, Landroid/taobao/windvane/extra/upload/UploadFileData;-><init>()V

    .line 124
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/extra/upload/UploadFileData;->accessToken:Ljava/lang/String;

    const-string v2, "blockNum"

    .line 125
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/taobao/windvane/extra/upload/UploadFileData;->blockNum:I

    const-string v2, "fileExt"

    .line 126
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/extra/upload/UploadFileData;->fileExt:Ljava/lang/String;

    const-string v2, "fileName"

    .line 127
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/extra/upload/UploadFileData;->fileName:Ljava/lang/String;

    const-string v2, "fileSize"

    .line 128
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/taobao/windvane/extra/upload/UploadFileData;->fileSize:J

    const-string/jumbo v2, "resourceUri"

    .line 129
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/extra/upload/UploadFileData;->resourceUri:Ljava/lang/String;

    const-string/jumbo v2, "tfsKey"

    .line 130
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/extra/upload/UploadFileData;->tfsKey:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/taobao/windvane/extra/upload/UploadFileData;->tryNum:I

    const-string/jumbo v2, "validTime"

    .line 132
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/taobao/windvane/extra/upload/UploadFileData;->validTime:J

    const-string v2, "finish"

    .line 133
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/taobao/windvane/extra/upload/UploadFileData;->finish:Z

    .line 134
    iget-object v0, p0, Landroid/taobao/windvane/extra/upload/UploadFileConnection;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v0, :cond_7

    .line 135
    iget-object v0, p0, Landroid/taobao/windvane/extra/upload/UploadFileConnection;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/connect/HttpConnectListener;->onFinish(Ljava/lang/Object;I)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_7
    return-void

    :catch_4
    move-exception v0

    .line 140
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 144
    :cond_8
    iget-object v0, p0, Landroid/taobao/windvane/extra/upload/UploadFileConnection;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    const-string v2, "FAIL"

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/connect/HttpConnectListener;->onError(ILjava/lang/String;)V

    .line 147
    :cond_9
    iput-object v7, p0, Landroid/taobao/windvane/extra/upload/UploadFileConnection;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    return-void
.end method

.method public final uploadFile(Ljava/lang/String;Ljava/lang/String;)Landroid/taobao/windvane/connect/HttpResponse;
    .locals 12

    const-string v0, "\r\n"

    const-string v1, "--"

    const-string v2, "UploadFileConnection"

    .line 151
    new-instance v3, Landroid/taobao/windvane/connect/HttpResponse;

    invoke-direct {v3}, Landroid/taobao/windvane/connect/HttpResponse;-><init>()V

    .line 154
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v5, 0x0

    .line 156
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v7, 0xea60

    .line 159
    :try_start_1
    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 160
    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v7, 0x1

    .line 161
    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 162
    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v7, 0x0

    .line 163
    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v8, "POST"

    .line 164
    invoke-virtual {p1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v8, "Connection"

    const-string v9, "keep-alive"

    .line 166
    invoke-virtual {p1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Host"

    .line 167
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v8, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v8, "Content-Type"

    .line 170
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "multipart/form-data;boundary="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 174
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 175
    iget-object v9, p0, Landroid/taobao/windvane/extra/upload/UploadFileConnection;->mFileExt:Ljava/lang/String;

    if-nez v9, :cond_0

    const-string v9, ""

    .line 176
    iput-object v9, p0, Landroid/taobao/windvane/extra/upload/UploadFileConnection;->mFileExt:Ljava/lang/String;

    .line 179
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content-Disposition:form-data;name=\"file\";filename=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Landroid/taobao/windvane/extra/upload/UploadFileConnection;->mFileExt:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\"\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v9, "Content-Transfer-Encoding:binary\r\n\r\n"

    .line 181
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 183
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x1000

    .line 184
    new-array v6, v6, [B

    .line 186
    :goto_0
    invoke-virtual {v9, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 187
    invoke-virtual {v8, v6, v7, v10}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 190
    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "--\r\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 194
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 196
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    .line 197
    invoke-virtual {v3, p2}, Landroid/taobao/windvane/connect/HttpResponse;->setHttpCode(I)V

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_4

    .line 199
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "gzip"

    .line 200
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 201
    new-instance p2, Ljava/io/DataInputStream;

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    .line 203
    :cond_2
    new-instance p2, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    move-object v5, p2

    const/16 p2, 0x800

    .line 205
    new-array p2, p2, [B

    .line 207
    :goto_2
    invoke-virtual {v5, p2}, Ljava/io/DataInputStream;->read([B)I

    move-result v0

    if-eq v0, v11, :cond_3

    .line 208
    invoke-virtual {v4, p2, v7, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 210
    :cond_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/taobao/windvane/connect/HttpResponse;->setData([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    if-eqz v5, :cond_5

    .line 220
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 222
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 226
    :cond_5
    :goto_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    .line 228
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    if-eqz p1, :cond_6

    .line 231
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-object v3

    :catch_2
    move-exception p2

    goto :goto_5

    :catch_3
    move-exception p2

    goto :goto_8

    :catchall_0
    move-exception p2

    move-object p1, v5

    goto/16 :goto_c

    :catch_4
    move-exception p2

    move-object p1, v5

    .line 216
    :goto_5
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "upload file error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_7

    .line 220
    :try_start_5
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception p2

    .line 222
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 226
    :cond_7
    :goto_6
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    move-exception p2

    .line 228
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    if-eqz p1, :cond_9

    goto :goto_b

    :catch_7
    move-exception p2

    move-object p1, v5

    .line 214
    :goto_8
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "upload file IO exception, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v5, :cond_8

    .line 220
    :try_start_8
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_9

    :catch_8
    move-exception p2

    .line 222
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 226
    :cond_8
    :goto_9
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_a

    :catch_9
    move-exception p2

    .line 228
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    if-eqz p1, :cond_9

    .line 231
    :goto_b
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 234
    :cond_9
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string/jumbo p1, "upload file fail."

    .line 235
    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_a
    new-instance p1, Landroid/taobao/windvane/connect/HttpResponse;

    invoke-direct {p1}, Landroid/taobao/windvane/connect/HttpResponse;-><init>()V

    return-object p1

    :catchall_1
    move-exception p2

    :goto_c
    if-eqz v5, :cond_b

    .line 220
    :try_start_a
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_d

    :catch_a
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 226
    :cond_b
    :goto_d
    :try_start_b
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_e

    :catch_b
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    if-eqz p1, :cond_c

    .line 231
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    goto :goto_10

    :goto_f
    throw p2

    :goto_10
    goto :goto_f
.end method
