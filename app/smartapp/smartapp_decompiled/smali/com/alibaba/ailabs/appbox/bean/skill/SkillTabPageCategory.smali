.class public Lcom/alibaba/ailabs/appbox/bean/skill/SkillTabPageCategory;
.super Ljava/lang/Object;
.source "SkillTabPageCategory.java"


# instance fields
.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillCate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillCate;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillTabPageCategory;->tabs:Ljava/util/List;

    return-object v0
.end method

.method public setTabs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillCate;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillTabPageCategory;->tabs:Ljava/util/List;

    return-void
.end method
