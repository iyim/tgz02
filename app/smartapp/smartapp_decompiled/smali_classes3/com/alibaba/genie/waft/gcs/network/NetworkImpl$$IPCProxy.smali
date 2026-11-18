.class public Lcom/alibaba/genie/waft/gcs/network/NetworkImpl$$IPCProxy;
.super Ljava/lang/Object;
.source "NetworkImpl$$IPCProxy.java"

# interfaces
.implements Lcom/taobao/aranger/intf/IServiceProxy;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field public object:Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
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

    .line 1
    invoke-direct {p0, p1}, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl$$IPCProxy;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x1a460531

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "NetworkImpl()"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-nez p1, :cond_2

    .line 3
    new-instance p1, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;

    invoke-direct {p1}, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;-><init>()V

    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl$$IPCProxy;->object:Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;

    return-void

    .line 10
    :cond_2
    new-instance p1, Lcom/taobao/aranger/exception/IPCException;

    const/16 p2, 0x10

    const-string v0, "can\'t find constructorId"

    invoke-direct {p1, p2, v0}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl$$IPCProxy;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, -0x7d651464

    if-eq v0, v4, :cond_2

    const v4, 0xe764b50

    if-eq v0, v4, :cond_1

    const v4, 0x275c845e

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "sendAsync(com$alibaba$genie$waft$gcs$network$api$Request,com$alibaba$genie$waft$gcs$network$api$NetworkListener)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "send(com$alibaba$genie$waft$gcs$network$api$Request)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "sendAsync(com$alibaba$genie$waft$gcs$network$api$Request)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    const/4 v0, 0x0

    if-eq p1, v2, :cond_5

    if-ne p1, v1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl$$IPCProxy;->object:Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;

    aget-object v1, p2, v3

    check-cast v1, Lcom/alibaba/genie/waft/gcs/network/api/Request;

    aget-object p2, p2, v2

    check-cast p2, Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;

    invoke-virtual {p1, v1, p2}, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;->sendAsync(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V

    return-object v0

    .line 11
    :cond_4
    new-instance p1, Lcom/taobao/aranger/exception/IPCException;

    const/16 p2, 0xc

    const-string v0, "can\'t find methodId"

    invoke-direct {p1, p2, v0}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl$$IPCProxy;->object:Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;

    aget-object p2, p2, v3

    check-cast p2, Lcom/alibaba/genie/waft/gcs/network/api/Request;

    invoke-virtual {p1, p2}, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;->sendAsync(Lcom/alibaba/genie/waft/gcs/network/api/Request;)V

    return-object v0

    .line 13
    :cond_6
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl$$IPCProxy;->object:Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;

    aget-object p2, p2, v3

    check-cast p2, Lcom/alibaba/genie/waft/gcs/network/api/Request;

    invoke-virtual {p1, p2}, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;->send(Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lcom/alibaba/genie/waft/gcs/network/api/Response;

    move-result-object p1

    return-object p1
.end method
