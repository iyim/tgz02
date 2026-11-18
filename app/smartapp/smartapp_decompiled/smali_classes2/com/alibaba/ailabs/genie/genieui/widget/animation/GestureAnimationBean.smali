.class public Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean;
.super Ljava/lang/Object;
.source "GestureAnimationBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;
    }
.end annotation


# instance fields
.field private gesture_animations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;",
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
.method public getAnimationName(I)Ljava/lang/String;
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean;->gesture_animations:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;

    .line 60
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;->access$000(Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 61
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;->access$100(Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public getGesture_animations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean;->gesture_animations:Ljava/util/List;

    return-object v0
.end method

.method public setGesture_animations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean;->gesture_animations:Ljava/util/List;

    return-void
.end method
