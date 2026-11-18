.class public Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;
.super Ljava/lang/Object;
.source "AnimationConfig.java"


# instance fields
.field private animBeans:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "animations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;",
            ">;"
        }
    .end annotation
.end field

.field private disableWakeupTipsActivity:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "disable_wakeup_recommend_activities"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private disableWakeupTipsPackage:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "disable_wakeup_recommend_packages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keepShowList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "keep_ball_show"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statusAnimations:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "status"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAnimBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;->animBeans:Ljava/util/List;

    return-object v0
.end method

.method public getDisableWakeupTipsActivity()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;->disableWakeupTipsActivity:Ljava/util/List;

    return-object v0
.end method

.method public getDisableWakeupTipsPackage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;->disableWakeupTipsPackage:Ljava/util/List;

    return-object v0
.end method

.method public getKeepShowList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;->keepShowList:Ljava/util/List;

    return-object v0
.end method

.method public getStatusAnimations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;->statusAnimations:Ljava/util/List;

    return-object v0
.end method

.method public setAnimBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;->animBeans:Ljava/util/List;

    return-void
.end method

.method public setDisableWakeupTipsActivity(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;->disableWakeupTipsActivity:Ljava/util/List;

    return-void
.end method

.method public setDisableWakeupTipsPackage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;->disableWakeupTipsPackage:Ljava/util/List;

    return-void
.end method

.method public setKeepShowList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;->keepShowList:Ljava/util/List;

    return-void
.end method

.method public setStatusAnimations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;->statusAnimations:Ljava/util/List;

    return-void
.end method
