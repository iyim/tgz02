.class Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;
.super Ljava/lang/Object;
.source "UploadFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadFileTask"
.end annotation


# static fields
.field private static final ENDPOINT:Ljava/lang/String; = "http://cn-hangzhou.oss-pub.aliyun-inc.com"


# instance fields
.field private mBucketName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFilePath:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mListener:Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileListener;

.field private mOss:Lcom/alibaba/sdk/android/oss/OSS;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileListener;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->mBucketName:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->mKey:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->mFilePath:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->mListener:Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;)Lcom/alibaba/sdk/android/oss/OSS;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    return-object p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;Lcom/alibaba/sdk/android/oss/OSS;)Lcom/alibaba/sdk/android/oss/OSS;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;Lcom/alibaba/sdk/android/oss/OSS;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->uploadToOss(Lcom/alibaba/sdk/android/oss/OSS;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;)Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->mListener:Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method private uploadToOss(Lcom/alibaba/sdk/android/oss/OSS;)V
    .locals 4

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "filePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oss"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->mBucketName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v1, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask$2;-><init>(Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;)V

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/oss/OSS;->asyncPutObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask$1;-><init>(Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/RequestManager;->getOssToken(Lcom/alibaba/ailabs/genie/second/utils/RequestManager$onResponseListener;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->uploadToOss(Lcom/alibaba/sdk/android/oss/OSS;)V

    :goto_0
    return-void
.end method
