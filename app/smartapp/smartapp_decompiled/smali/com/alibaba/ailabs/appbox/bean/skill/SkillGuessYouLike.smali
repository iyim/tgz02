.class public Lcom/alibaba/ailabs/appbox/bean/skill/SkillGuessYouLike;
.super Ljava/lang/Object;
.source "SkillGuessYouLike.java"


# instance fields
.field cardId:Ljava/lang/String;

.field content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;",
            ">;"
        }
    .end annotation
.end field

.field pvid:Ljava/lang/String;

.field scm:Ljava/lang/String;

.field title:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCardId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillGuessYouLike;->cardId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillGuessYouLike;->content:Ljava/util/List;

    return-object v0
.end method

.method public getPvid()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillGuessYouLike;->pvid:Ljava/lang/String;

    return-object v0
.end method

.method public getScm()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillGuessYouLike;->scm:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillGuessYouLike;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillGuessYouLike;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCardId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillGuessYouLike;->cardId:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillGuessYouLike;->content:Ljava/util/List;

    return-void
.end method

.method public setPvid(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillGuessYouLike;->pvid:Ljava/lang/String;

    return-void
.end method

.method public setScm(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillGuessYouLike;->scm:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillGuessYouLike;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillGuessYouLike;->type:Ljava/lang/String;

    return-void
.end method
