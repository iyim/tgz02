.class public Lcom/alibaba/ailabs/appbox/bean/skill/SkillHotAndNewest;
.super Ljava/lang/Object;
.source "SkillHotAndNewest.java"


# instance fields
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

.field private themeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
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

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillHotAndNewest;->content:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillHotAndNewest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillHotAndNewest;->themeId:Ljava/lang/String;

    return-object v0
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

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillHotAndNewest;->content:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillHotAndNewest;->name:Ljava/lang/String;

    return-void
.end method

.method public setThemeId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillHotAndNewest;->themeId:Ljava/lang/String;

    return-void
.end method
