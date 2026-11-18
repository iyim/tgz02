.class Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;
.super Ljava/lang/Object;
.source "DownloadFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadFileTask"
.end annotation


# static fields
.field private static final ENDPOINT:Ljava/lang/String; = "http://cn-hangzhou.oss-pub.aliyun-inc.com"


# instance fields
.field private mBucketName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mKey:Ljava/lang/String;

.field private mListener:Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileListener;

.field private mOss:Lcom/alibaba/sdk/android/oss/OSS;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileListener;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->mBucketName:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->mKey:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->mListener:Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;)Lcom/alibaba/sdk/android/oss/OSS;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    return-object p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;Lcom/alibaba/sdk/android/oss/OSS;)Lcom/alibaba/sdk/android/oss/OSS;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;Lcom/alibaba/sdk/android/oss/OSS;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->downloadFileToOss(Lcom/alibaba/sdk/android/oss/OSS;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;)Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->mListener:Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileListener;

    return-object p0
.end method

.method private downloadFileToOss(Lcom/alibaba/sdk/android/oss/OSS;)V
    .locals 3

    .line 73
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->mBucketName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->mKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask$2;-><init>(Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;)V

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/oss/OSS;->asyncGetObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask$1;-><init>(Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/RequestManager;->getOssToken(Lcom/alibaba/ailabs/genie/second/utils/RequestManager$onResponseListener;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->downloadFileToOss(Lcom/alibaba/sdk/android/oss/OSS;)V

    :goto_0
    return-void
.end method
