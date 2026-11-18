.class public Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;
.super Ljava/lang/Object;
.source "StatusAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation$Animation;
    }
.end annotation


# static fields
.field public static final TYPE_COMMON:I = 0x0

.field public static final TYPE_INSERT:I = 0x1


# instance fields
.field private animationList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "animation_set"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation$Animation;",
            ">;"
        }
    .end annotation
.end field

.field private decoration:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "decoration"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation$Animation;",
            ">;"
        }
    .end annotation
.end field

.field private duration:I

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "status"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAnimationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation$Animation;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;->animationList:Ljava/util/List;

    return-object v0
.end method

.method public getDecoration()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation$Animation;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;->decoration:Ljava/util/List;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;->duration:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;->type:I

    return v0
.end method

.method public setAnimationList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation$Animation;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;->animationList:Ljava/util/List;

    return-void
.end method

.method public setDecoration(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation$Animation;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;->decoration:Ljava/util/List;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;->duration:I

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;->status:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;->type:I

    return-void
.end method
