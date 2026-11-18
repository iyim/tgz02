.class public Lcom/aliyun/oss/model/UdfGenericRequest;
.super Lcom/aliyun/oss/model/WebServiceRequest;
.source "UdfGenericRequest.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/aliyun/oss/model/WebServiceRequest;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/aliyun/oss/model/WebServiceRequest;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfGenericRequest;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfGenericRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfGenericRequest;->name:Ljava/lang/String;

    return-void
.end method
