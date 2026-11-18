.class public Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem$Provider;
.super Ljava/lang/Object;
.source "SkillItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Provider"
.end annotation


# instance fields
.field private icom:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem$Provider;->this$0:Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcom()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem$Provider;->icom:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem$Provider;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setIcom(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem$Provider;->icom:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem$Provider;->name:Ljava/lang/String;

    return-void
.end method
