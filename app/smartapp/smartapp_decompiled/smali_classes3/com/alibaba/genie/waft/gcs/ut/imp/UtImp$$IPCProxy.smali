.class public Lcom/alibaba/genie/waft/gcs/ut/imp/UtImp$$IPCProxy;
.super Ljava/lang/Object;
.source "UtImp$$IPCProxy.java"

# interfaces
.implements Lcom/taobao/aranger/intf/IServiceProxy;


# instance fields
.field private object:Lcom/alibaba/genie/waft/gcs/ut/imp/UtImp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2e

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public varargs create(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lcom/alibaba/genie/waft/gcs/ut/imp/UtImp$$IPCProxy;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x5a9bbe4e

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "UtImp()"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-nez p1, :cond_3

    .line 16
    new-instance p1, Lcom/alibaba/genie/waft/gcs/ut/imp/UtImp;

    invoke-direct {p1}, Lcom/alibaba/genie/waft/gcs/ut/imp/UtImp;-><init>()V

    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/imp/UtImp$$IPCProxy;->object:Lcom/alibaba/genie/waft/gcs/ut/imp/UtImp;

    .line 21
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/imp/UtImp$$IPCProxy;->object:Lcom/alibaba/genie/waft/gcs/ut/imp/UtImp;

    if-eqz p1, :cond_2

    return-void

    .line 22
    :cond_2
    new-instance p1, Lcom/taobao/aranger/exception/IPCException;

    const/16 p2, 0x19

    const-string v0, "UtImp object is null"

    invoke-direct {p1, p2, v0}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 19
    :cond_3
    new-instance p1, Lcom/taobao/aranger/exception/IPCException;

    const/16 p2, 0x10

    const-string v0, "can\'t find constructorId"

    invoke-direct {p1, p2, v0}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/genie/waft/gcs/ut/imp/UtImp$$IPCProxy;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x5f6a5473

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "sendUt(com$alibaba$genie$waft$gcs$ut$api$UtRequest)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-nez p1, :cond_2

    .line 30
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/imp/UtImp$$IPCProxy;->object:Lcom/alibaba/genie/waft/gcs/ut/imp/UtImp;

    aget-object p2, p2, v1

    check-cast p2, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;

    invoke-virtual {p1, p2}, Lcom/alibaba/genie/waft/gcs/ut/imp/UtImp;->sendUt(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;)V

    const/4 p1, 0x0

    return-object p1

    .line 33
    :cond_2
    new-instance p1, Lcom/taobao/aranger/exception/IPCException;

    const/16 p2, 0xc

    const-string v0, "can\'t find methodId"

    invoke-direct {p1, p2, v0}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/String;)V

    throw p1
.end method
