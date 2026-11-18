.class public Lcom/alibaba/genie/waft/gcs/featurefeedback/been/UserFeedbackInfoDTO;
.super Ljava/lang/Object;
.source "UserFeedbackInfoDTO.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private featuresId:Ljava/lang/Long;

.field private featuresVersion:Ljava/lang/String;

.field private invitedTemplate:I

.field private operationType:Ljava/lang/Integer;

.field private score:Ljava/lang/Integer;

.field private systemVersion:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userId:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getFeaturesId()Ljava/lang/Long;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/UserFeedbackInfoDTO;->featuresId:Ljava/lang/Long;

    return-object v0
.end method

.method public getFeaturesVersion()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/UserFeedbackInfoDTO;->featuresVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getInvitedTemplate()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/UserFeedbackInfoDTO;->invitedTemplate:I

    return v0
.end method

.method public getOperationType()Ljava/lang/Integer;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/UserFeedbackInfoDTO;->operationType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getScore()Ljava/lang/Integer;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/UserFeedbackInfoDTO;->score:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSystemVersion()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/UserFeedbackInfoDTO;->systemVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/UserFeedbackInfoDTO;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/UserFeedbackInfoDTO;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/UserFeedbackInfoDTO;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setFeaturesId(Ljava/lang/Long;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/UserFeedbackInfoDTO;->featuresId:Ljava/lang/Long;

    return-void
.end method

.method public setFeaturesVersion(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/UserFeedbackInfoDTO;->featuresVersion:Ljava/lang/String;

    return-void
.end method

.method public setInvitedTemplate(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/UserFeedbackInfoDTO;->invitedTemplate:I

    return-void
.end method

.method public setOperationType(Ljava/lang/Integer;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/UserFeedbackInfoDTO;->operationType:Ljava/lang/Integer;

    return-void
.end method

.method public setScore(Ljava/lang/Integer;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/UserFeedbackInfoDTO;->score:Ljava/lang/Integer;

    return-void
.end method

.method public setSystemVersion(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/UserFeedbackInfoDTO;->systemVersion:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/UserFeedbackInfoDTO;->tags:Ljava/util/List;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/UserFeedbackInfoDTO;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/UserFeedbackInfoDTO;->uuid:Ljava/lang/String;

    return-void
.end method
