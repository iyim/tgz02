.class public Lcom/aliyun/oss/model/GetBucketImageResult;
.super Lcom/aliyun/oss/model/PutBucketImageRequest;
.source "GetBucketImageResult.java"


# instance fields
.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 10
    invoke-direct {p0, v0}, Lcom/aliyun/oss/model/PutBucketImageRequest;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/PutBucketImageRequest;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public GetStatus()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/aliyun/oss/model/GetBucketImageResult;->status:Ljava/lang/String;

    return-object v0
.end method

.method public SetStatus(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/aliyun/oss/model/GetBucketImageResult;->status:Ljava/lang/String;

    return-void
.end method
