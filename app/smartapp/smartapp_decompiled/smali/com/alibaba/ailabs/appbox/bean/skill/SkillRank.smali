.class public Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;
.super Ljava/lang/Object;
.source "SkillRank.java"


# instance fields
.field private cardId:I

.field private content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillHotAndNewest;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCardId()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;->cardId:I

    return v0
.end method

.method public getContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillHotAndNewest;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;->content:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCardId(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;->cardId:I

    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillHotAndNewest;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;->content:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;->type:Ljava/lang/String;

    return-void
.end method
