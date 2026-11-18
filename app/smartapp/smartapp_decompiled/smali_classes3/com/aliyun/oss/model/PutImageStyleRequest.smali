.class public Lcom/aliyun/oss/model/PutImageStyleRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "PutImageStyleRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private style:Ljava/lang/String;

.field private styleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericRequest;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public GetBucketName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/aliyun/oss/model/PutImageStyleRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public GetStyle()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/aliyun/oss/model/PutImageStyleRequest;->style:Ljava/lang/String;

    return-object v0
.end method

.method public GetStyleName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/aliyun/oss/model/PutImageStyleRequest;->styleName:Ljava/lang/String;

    return-object v0
.end method

.method public SetBucketName(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/aliyun/oss/model/PutImageStyleRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public SetStyle(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/aliyun/oss/model/PutImageStyleRequest;->style:Ljava/lang/String;

    return-void
.end method

.method public SetStyleName(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/aliyun/oss/model/PutImageStyleRequest;->styleName:Ljava/lang/String;

    return-void
.end method
