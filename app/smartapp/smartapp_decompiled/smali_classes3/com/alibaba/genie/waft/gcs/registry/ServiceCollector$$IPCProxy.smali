.class public Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector$$IPCProxy;
.super Ljava/lang/Object;
.source "ServiceCollector$$IPCProxy.java"

# interfaces
.implements Lcom/taobao/aranger/intf/IServiceProxy;


# instance fields
.field private object:Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;


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

    .line 42
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
    invoke-direct {p0, p1}, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector$$IPCProxy;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x2404804c

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "getInstance()"

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
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;->getInstance()Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector$$IPCProxy;->object:Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;

    .line 21
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector$$IPCProxy;->object:Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;

    if-eqz p1, :cond_2

    return-void

    .line 22
    :cond_2
    new-instance p1, Lcom/taobao/aranger/exception/IPCException;

    const/16 p2, 0x19

    const-string v0, "ServiceCollector object is null"

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector$$IPCProxy;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6678bd0b

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    const v1, -0x66020833

    if-eq v0, v1, :cond_1

    const v1, 0x227a6be

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "collect(com$alibaba$genie$waft$gcs$registry$api$ServiceMetadata)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "collect(java$util$List)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "find(java$lang$String)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    if-ne p1, v2, :cond_4

    .line 36
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector$$IPCProxy;->object:Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;

    aget-object p2, p2, v4

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;->find(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;

    move-result-object p1

    return-object p1

    .line 38
    :cond_4
    new-instance p1, Lcom/taobao/aranger/exception/IPCException;

    const/16 p2, 0xc

    const-string v0, "can\'t find methodId"

    invoke-direct {p1, p2, v0}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 33
    :cond_5
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector$$IPCProxy;->object:Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;

    aget-object p2, p2, v4

    check-cast p2, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;

    invoke-virtual {p1, p2}, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;->collect(Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;)V

    return-object v0

    .line 30
    :cond_6
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector$$IPCProxy;->object:Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;

    aget-object p2, p2, v4

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;->collect(Ljava/util/List;)V

    return-object v0
.end method
