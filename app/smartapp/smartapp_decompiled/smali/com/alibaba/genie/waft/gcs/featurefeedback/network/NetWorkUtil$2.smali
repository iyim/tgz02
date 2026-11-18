.class final Lcom/alibaba/genie/waft/gcs/featurefeedback/network/NetWorkUtil$2;
.super Ljava/lang/Object;
.source "NetWorkUtil.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/network/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/waft/gcs/featurefeedback/network/NetWorkUtil;->uploadFeatureEvent(Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/tg/network/Callback<",
        "Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureEventResponseData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " uploadFeatureEvent failed :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetWorkUtil"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureEventResponseData;)V
    .locals 1

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " uploadFeatureEvent success "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetWorkUtil"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .locals 0

    .line 68
    check-cast p2, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureEventResponseData;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/NetWorkUtil$2;->onSuccess(ILcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureEventResponseData;)V

    return-void
.end method
