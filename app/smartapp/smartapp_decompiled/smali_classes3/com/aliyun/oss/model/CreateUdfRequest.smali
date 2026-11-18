.class public Lcom/aliyun/oss/model/CreateUdfRequest;
.super Lcom/aliyun/oss/model/UdfGenericRequest;
.source "CreateUdfRequest.java"


# instance fields
.field private desc:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/UdfGenericRequest;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/UdfGenericRequest;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, Lcom/aliyun/oss/model/CreateUdfRequest;->desc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/UdfGenericRequest;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p2, p0, Lcom/aliyun/oss/model/CreateUdfRequest;->id:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/aliyun/oss/model/CreateUdfRequest;->desc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/aliyun/oss/model/CreateUdfRequest;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/aliyun/oss/model/CreateUdfRequest;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/aliyun/oss/model/CreateUdfRequest;->desc:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/aliyun/oss/model/CreateUdfRequest;->id:Ljava/lang/String;

    return-void
.end method
