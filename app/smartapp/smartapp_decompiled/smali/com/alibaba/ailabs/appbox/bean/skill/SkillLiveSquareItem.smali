.class public Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquareItem;
.super Ljava/lang/Object;
.source "SkillLiveSquareItem.java"


# instance fields
.field private banner:Lcom/alibaba/ailabs/appbox/bean/skill/SkillBanner;

.field private content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private themeId:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getBanner()Lcom/alibaba/ailabs/appbox/bean/skill/SkillBanner;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquareItem;->banner:Lcom/alibaba/ailabs/appbox/bean/skill/SkillBanner;

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

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquareItem;->content:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquareItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeId()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquareItem;->themeId:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquareItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setBanner(Lcom/alibaba/ailabs/appbox/bean/skill/SkillBanner;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquareItem;->banner:Lcom/alibaba/ailabs/appbox/bean/skill/SkillBanner;

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

    .line 77
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquareItem;->content:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquareItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setThemeId(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquareItem;->themeId:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquareItem;->type:Ljava/lang/String;

    return-void
.end method
