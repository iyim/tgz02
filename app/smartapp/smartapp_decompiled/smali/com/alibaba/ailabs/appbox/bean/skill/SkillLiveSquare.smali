.class public Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquare;
.super Ljava/lang/Object;
.source "SkillLiveSquare.java"


# instance fields
.field private cardId:I

.field content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquareItem;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCardId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquare;->cardId:I

    return v0
.end method

.method public getContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquareItem;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquare;->content:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquare;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquare;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCardId(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquare;->cardId:I

    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquareItem;",
            ">;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquare;->content:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquare;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquare;->type:Ljava/lang/String;

    return-void
.end method
