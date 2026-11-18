.class public Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;
.super Ljava/lang/Object;
.source "GenieBallCorpus.java"


# static fields
.field public static final ACTION_TYPE_JUMP:Ljava/lang/String; = "JUMP"

.field public static final ACTION_TYPE_MOCK:Ljava/lang/String; = "MOCK"


# instance fields
.field private actionType:Ljava/lang/String;

.field private actionValue:Ljava/lang/String;

.field private activityName:Ljava/lang/String;

.field private corpusId:Ljava/lang/Long;

.field private iconUrl:Ljava/lang/String;

.field private logInfo:Ljava/lang/String;

.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/BaseBallRule;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getActionType()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method public getActionValue()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->actionValue:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public getCorpusId()Ljava/lang/Long;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->corpusId:Ljava/lang/Long;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLogInfo()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->logInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/BaseBallRule;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->rules:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->actionType:Ljava/lang/String;

    return-void
.end method

.method public setActionValue(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->actionValue:Ljava/lang/String;

    return-void
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->activityName:Ljava/lang/String;

    return-void
.end method

.method public setCorpusId(Ljava/lang/Long;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->corpusId:Ljava/lang/Long;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setLogInfo(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->logInfo:Ljava/lang/String;

    return-void
.end method

.method public setRules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/BaseBallRule;",
            ">;)V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->rules:Ljava/util/List;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->text:Ljava/lang/String;

    return-void
.end method
