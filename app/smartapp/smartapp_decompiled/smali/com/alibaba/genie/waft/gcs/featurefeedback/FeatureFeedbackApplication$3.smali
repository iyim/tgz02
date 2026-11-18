.class Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication$3;
.super Ljava/lang/Object;
.source "FeatureFeedbackApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/client/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;->initMessageCenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication$3;->this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registErro(Ljava/lang/String;)V
    .locals 1

    const-string p1, "FeatureFeedbackApplication"

    const-string v0, "MessageCenter registErro "

    .line 98
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public registSuccess()V
    .locals 2

    const-string v0, "FeatureFeedbackApplication"

    const-string v1, "MessageCenter registSuccess "

    .line 104
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public serviceConnected()V
    .locals 2

    const-string v0, "FeatureFeedbackApplication"

    const-string v1, "MessageCenter serviceConnected "

    .line 85
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public serviceDisconnect()V
    .locals 2

    const-string v0, "FeatureFeedbackApplication"

    const-string v1, "MessageCenter serviceDisconnect "

    .line 92
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
