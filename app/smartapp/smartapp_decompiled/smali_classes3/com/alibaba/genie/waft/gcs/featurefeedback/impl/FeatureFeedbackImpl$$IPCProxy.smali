.class public Lcom/alibaba/genie/waft/gcs/featurefeedback/impl/FeatureFeedbackImpl$$IPCProxy;
.super Ljava/lang/Object;
.source "FeatureFeedbackImpl$$IPCProxy.java"

# interfaces
.implements Lcom/taobao/aranger/intf/IServiceProxy;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private object:Lcom/alibaba/genie/waft/gcs/featurefeedback/impl/FeatureFeedbackImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 39
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

    .line 16
    invoke-direct {p0, p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/impl/FeatureFeedbackImpl$$IPCProxy;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x2461ef7c

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "FeatureFeedbackImpl()"

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

    .line 18
    new-instance p1, Lcom/alibaba/genie/waft/gcs/featurefeedback/impl/FeatureFeedbackImpl;

    invoke-direct {p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/impl/FeatureFeedbackImpl;-><init>()V

    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/impl/FeatureFeedbackImpl$$IPCProxy;->object:Lcom/alibaba/genie/waft/gcs/featurefeedback/impl/FeatureFeedbackImpl;

    .line 23
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/impl/FeatureFeedbackImpl$$IPCProxy;->object:Lcom/alibaba/genie/waft/gcs/featurefeedback/impl/FeatureFeedbackImpl;

    if-eqz p1, :cond_2

    return-void

    .line 24
    :cond_2
    new-instance p1, Lcom/taobao/aranger/exception/IPCException;

    const/16 p2, 0x19

    const-string v0, "FeatureFeedbackImpl object is null"

    invoke-direct {p1, p2, v0}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 21
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

    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/impl/FeatureFeedbackImpl$$IPCProxy;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, -0x430518a9

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "uploadFeatureEvent(com$alibaba$genie$waft$gcs$featurefeedback$api$GeneralUserEventDTO)"

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

    .line 32
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/impl/FeatureFeedbackImpl$$IPCProxy;->object:Lcom/alibaba/genie/waft/gcs/featurefeedback/impl/FeatureFeedbackImpl;

    aget-object p2, p2, v1

    check-cast p2, Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;

    invoke-virtual {p1, p2}, Lcom/alibaba/genie/waft/gcs/featurefeedback/impl/FeatureFeedbackImpl;->uploadFeatureEvent(Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;)V

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_2
    new-instance p1, Lcom/taobao/aranger/exception/IPCException;

    const/16 p2, 0xc

    const-string v0, "can\'t find methodId"

    invoke-direct {p1, p2, v0}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/String;)V

    throw p1
.end method
