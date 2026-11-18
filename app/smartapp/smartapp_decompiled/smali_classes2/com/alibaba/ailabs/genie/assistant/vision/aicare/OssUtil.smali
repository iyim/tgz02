.class public Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil;
.super Ljava/lang/Object;
.source "OssUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OssUtil"

.field private static lastToken:Ljava/lang/String;

.field private static listDriveResponse:Lcom/aliyun/ccp/api/response/drive/ListDriveResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;,
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil;->upload(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static deleteFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 90
    new-instance v0, Lcom/aliyun/ccp/api/model/TokenData;

    invoke-direct {v0}, Lcom/aliyun/ccp/api/model/TokenData;-><init>()V

    .line 91
    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/model/TokenData;->setAccessToken(Ljava/lang/String;)V

    .line 92
    new-instance p1, Lcom/aliyun/ccp/api/ClientProfile;

    invoke-direct {p1, v0}, Lcom/aliyun/ccp/api/ClientProfile;-><init>(Lcom/aliyun/ccp/api/model/TokenData;)V

    .line 93
    new-instance v0, Lcom/aliyun/ccp/api/CCPClient;

    invoke-direct {v0, p1}, Lcom/aliyun/ccp/api/CCPClient;-><init>(Lcom/aliyun/ccp/api/ClientProfile;)V

    .line 96
    new-instance p1, Lcom/aliyun/ccp/api/request/drive/ListDriveRequest;

    invoke-direct {p1}, Lcom/aliyun/ccp/api/request/drive/ListDriveRequest;-><init>()V

    .line 99
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/CCPClient;->listDrive(Lcom/aliyun/ccp/api/request/drive/ListDriveRequest;)Lcom/aliyun/ccp/api/response/drive/ListDriveResponse;

    move-result-object p1
    :try_end_0
    .catch Lcom/aliyun/ccp/api/exception/ServerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/aliyun/ccp/api/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Lcom/aliyun/ccp/api/exception/ClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 101
    invoke-virtual {p1}, Lcom/aliyun/ccp/api/exception/ServerException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    .line 105
    :goto_1
    invoke-virtual {p1}, Lcom/aliyun/ccp/api/response/drive/ListDriveResponse;->getItems()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/model/DriveData;

    .line 107
    new-instance v1, Lcom/aliyun/ccp/api/request/file/DeleteFileRequest;

    invoke-direct {v1}, Lcom/aliyun/ccp/api/request/file/DeleteFileRequest;-><init>()V

    .line 108
    invoke-virtual {p1}, Lcom/aliyun/ccp/api/model/DriveData;->getDriveId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/aliyun/ccp/api/request/file/DeleteFileRequest;->setDriverId(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1, p0}, Lcom/aliyun/ccp/api/request/file/DeleteFileRequest;->setFileId(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 110
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/aliyun/ccp/api/request/file/DeleteFileRequest;->setPermanently(Ljava/lang/Boolean;)V

    .line 112
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/aliyun/ccp/api/CCPClient;->deleteFile(Lcom/aliyun/ccp/api/request/file/DeleteFileRequest;)Lcom/aliyun/ccp/api/response/BaseResponse;
    :try_end_1
    .catch Lcom/aliyun/ccp/api/exception/ServerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/aliyun/ccp/api/exception/ClientException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 116
    invoke-virtual {p0}, Lcom/aliyun/ccp/api/exception/ClientException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception p0

    .line 114
    invoke-virtual {p0}, Lcom/aliyun/ccp/api/exception/ServerException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static listFiles(Ljava/lang/String;)V
    .locals 4

    .line 56
    new-instance v0, Lcom/aliyun/ccp/api/model/TokenData;

    invoke-direct {v0}, Lcom/aliyun/ccp/api/model/TokenData;-><init>()V

    .line 57
    invoke-virtual {v0, p0}, Lcom/aliyun/ccp/api/model/TokenData;->setAccessToken(Ljava/lang/String;)V

    .line 58
    new-instance p0, Lcom/aliyun/ccp/api/ClientProfile;

    invoke-direct {p0, v0}, Lcom/aliyun/ccp/api/ClientProfile;-><init>(Lcom/aliyun/ccp/api/model/TokenData;)V

    .line 59
    new-instance v0, Lcom/aliyun/ccp/api/CCPClient;

    invoke-direct {v0, p0}, Lcom/aliyun/ccp/api/CCPClient;-><init>(Lcom/aliyun/ccp/api/ClientProfile;)V

    .line 62
    new-instance p0, Lcom/aliyun/ccp/api/request/drive/ListDriveRequest;

    invoke-direct {p0}, Lcom/aliyun/ccp/api/request/drive/ListDriveRequest;-><init>()V

    .line 66
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/aliyun/ccp/api/CCPClient;->listDrive(Lcom/aliyun/ccp/api/request/drive/ListDriveRequest;)Lcom/aliyun/ccp/api/response/drive/ListDriveResponse;

    move-result-object p0
    :try_end_0
    .catch Lcom/aliyun/ccp/api/exception/ServerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/aliyun/ccp/api/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Lcom/aliyun/ccp/api/exception/ClientException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 68
    invoke-virtual {p0}, Lcom/aliyun/ccp/api/exception/ServerException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 72
    :goto_1
    invoke-virtual {p0}, Lcom/aliyun/ccp/api/response/drive/ListDriveResponse;->getItems()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/aliyun/ccp/api/model/DriveData;

    .line 74
    new-instance v2, Lcom/aliyun/ccp/api/request/file/ListFileRequest;

    invoke-direct {v2}, Lcom/aliyun/ccp/api/request/file/ListFileRequest;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/aliyun/ccp/api/model/DriveData;->getDriveId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/aliyun/ccp/api/request/file/ListFileRequest;->setDriveId(Ljava/lang/String;)V

    .line 77
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/aliyun/ccp/api/CCPClient;->listFile(Lcom/aliyun/ccp/api/request/file/ListFileRequest;)Lcom/aliyun/ccp/api/response/file/ListFileResponse;

    move-result-object p0

    .line 78
    :goto_2
    invoke-virtual {p0}, Lcom/aliyun/ccp/api/response/file/ListFileResponse;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const-string v0, "OssUtil"

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/ccp/api/response/file/ListFileResponse;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aliyun/ccp/api/model/FileData;

    invoke-virtual {v3}, Lcom/aliyun/ccp/api/model/FileData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/aliyun/ccp/api/exception/ServerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/aliyun/ccp/api/exception/ClientException; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_2
    move-exception p0

    .line 85
    invoke-virtual {p0}, Lcom/aliyun/ccp/api/exception/ClientException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception p0

    .line 83
    invoke-virtual {p0}, Lcom/aliyun/ccp/api/exception/ServerException;->printStackTrace()V

    :cond_0
    :goto_3
    return-void
.end method

.method public static upLoadFile(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OssUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;->getInstance()Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;->getAuthInfo()Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1;-><init>(Ljava/lang/String;Landroid/content/Context;[B)V

    const/16 p0, 0x3e9

    invoke-static {v0, v1, p0}, Lcom/alibaba/ailabs/genie/assistant/mtop/NetApi;->getAicloudTPhotoToken(Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    return-void
.end method

.method private static upload(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;,
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "detect"

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload file = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OssUtil"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x4d2

    .line 126
    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 127
    new-instance v6, Lcom/aliyun/ccp/api/model/TokenData;

    invoke-direct {v6}, Lcom/aliyun/ccp/api/model/TokenData;-><init>()V

    .line 128
    invoke-virtual {v6, v2}, Lcom/aliyun/ccp/api/model/TokenData;->setAccessToken(Ljava/lang/String;)V

    .line 129
    new-instance v7, Lcom/aliyun/ccp/api/ClientProfile;

    invoke-direct {v7, v6}, Lcom/aliyun/ccp/api/ClientProfile;-><init>(Lcom/aliyun/ccp/api/model/TokenData;)V

    .line 130
    new-instance v6, Lcom/aliyun/ccp/api/CCPClient;

    invoke-direct {v6, v7}, Lcom/aliyun/ccp/api/CCPClient;-><init>(Lcom/aliyun/ccp/api/ClientProfile;)V

    .line 133
    sget-object v7, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil;->lastToken:Ljava/lang/String;

    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v9, 0x0

    if-nez v7, :cond_0

    .line 135
    sput-object v2, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil;->lastToken:Ljava/lang/String;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 139
    :goto_0
    sget-object v7, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil;->listDriveResponse:Lcom/aliyun/ccp/api/response/drive/ListDriveResponse;

    if-eqz v7, :cond_1

    if-eqz v2, :cond_2

    .line 140
    :cond_1
    new-instance v2, Lcom/aliyun/ccp/api/request/drive/ListDriveRequest;

    invoke-direct {v2}, Lcom/aliyun/ccp/api/request/drive/ListDriveRequest;-><init>()V

    .line 141
    invoke-virtual {v6, v2}, Lcom/aliyun/ccp/api/CCPClient;->listDrive(Lcom/aliyun/ccp/api/request/drive/ListDriveRequest;)Lcom/aliyun/ccp/api/response/drive/ListDriveResponse;

    move-result-object v2

    sput-object v2, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil;->listDriveResponse:Lcom/aliyun/ccp/api/response/drive/ListDriveResponse;

    const-string v2, "re-Get ListDriveRequest"

    .line 142
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_2
    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil;->listDriveResponse:Lcom/aliyun/ccp/api/response/drive/ListDriveResponse;

    if-nez v2, :cond_3

    const-string v0, "Panic listDriveResponse = null"

    .line 146
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 153
    :cond_3
    invoke-virtual {v2}, Lcom/aliyun/ccp/api/response/drive/ListDriveResponse;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aliyun/ccp/api/model/DriveData;

    .line 155
    invoke-virtual {v2}, Lcom/aliyun/ccp/api/model/DriveData;->getDriveId()Ljava/lang/String;

    move-result-object v7

    .line 158
    new-instance v10, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;

    invoke-direct {v10}, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;-><init>()V

    .line 160
    invoke-virtual {v10, v1}, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->setName(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2}, Lcom/aliyun/ccp/api/model/DriveData;->getDriveId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->setDriverId(Ljava/lang/String;)V

    .line 162
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->setHidden(Ljava/lang/Boolean;)V

    const-string v2, "file"

    .line 163
    invoke-virtual {v10, v2}, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->setType(Ljava/lang/String;)V

    const-string v2, "signed_url"

    .line 164
    invoke-virtual {v10, v2}, Lcom/aliyun/ccp/api/request/file/CreateFileRequest;->setUploadSignatureType(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v6, v10}, Lcom/aliyun/ccp/api/CCPClient;->createFile(Lcom/aliyun/ccp/api/request/file/CreateFileRequest;)Lcom/aliyun/ccp/api/response/file/CreateFileResponse;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Lcom/aliyun/ccp/api/response/file/CreateFileResponse;->getFileId()Ljava/lang/String;

    move-result-object v10

    .line 168
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fileId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    .line 172
    :try_start_0
    invoke-virtual {v2}, Lcom/aliyun/ccp/api/response/file/CreateFileResponse;->getSignedUrlData()Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;

    move-result-object v12

    .line 173
    invoke-virtual {v12}, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;->getUrl()Ljava/lang/String;

    move-result-object v12

    .line 174
    invoke-static {v11, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v13

    .line 175
    new-instance v14, Lokhttp3/Request$Builder;

    invoke-direct {v14}, Lokhttp3/Request$Builder;-><init>()V

    .line 176
    invoke-virtual {v14, v12}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v12

    .line 177
    invoke-virtual {v12, v13}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v12

    .line 178
    invoke-virtual {v12}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v12

    .line 179
    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 180
    new-instance v4, Lokhttp3/OkHttpClient;

    invoke-direct {v4}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x12c

    invoke-virtual {v4, v14, v15, v13}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v14, v15, v13}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    new-instance v13, Lokhttp3/ConnectionPool;

    const/16 v14, 0x40

    const-wide/16 v8, 0x5

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v13, v14, v8, v9, v15}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 181
    invoke-virtual {v4, v13}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v4

    .line 183
    invoke-virtual {v4, v12}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    :try_start_1
    invoke-virtual {v4}, Lokhttp3/Response;->isSuccessful()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 185
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSuccess : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " data.length : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Lcom/aliyun/ccp/api/request/file/CompleteFileRequest;

    invoke-direct {v0}, Lcom/aliyun/ccp/api/request/file/CompleteFileRequest;-><init>()V

    .line 188
    invoke-virtual {v2}, Lcom/aliyun/ccp/api/response/file/CreateFileResponse;->getDriveId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/aliyun/ccp/api/request/file/CompleteFileRequest;->setDriverId(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v2}, Lcom/aliyun/ccp/api/response/file/CreateFileResponse;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/aliyun/ccp/api/request/file/CompleteFileRequest;->setFileId(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v6, v0}, Lcom/aliyun/ccp/api/CCPClient;->completeFile(Lcom/aliyun/ccp/api/request/file/CompleteFileRequest;)Lcom/aliyun/ccp/api/response/MessageResponse;

    .line 194
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v11, v11, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2, v7}, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->setDriveId(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v2, v10}, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->setFileId(Ljava/lang/String;)V

    const-string v1, "CryDetection"

    .line 199
    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/FileInfoMeta;->setBusinessType(Ljava/lang/String;)V

    .line 200
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 201
    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v5, 0x0

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json str  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Meta-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/TimeUtil;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    move-object/from16 v2, p0

    invoke-static {v2, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil;->upLoadFile(Landroid/content/Context;Ljava/lang/String;[B)V

    goto :goto_1

    .line 207
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " err : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    .line 215
    :try_start_2
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 216
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v11, v4

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v4, v11

    goto :goto_4

    :catch_1
    move-exception v0

    .line 210
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v11, :cond_6

    .line 215
    :try_start_4
    invoke-virtual {v11}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 216
    invoke-virtual {v11}, Lokhttp3/Response;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    return-void

    :goto_4
    if-eqz v4, :cond_7

    .line 215
    :try_start_5
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 216
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    :cond_7
    :goto_5
    throw v1
.end method
