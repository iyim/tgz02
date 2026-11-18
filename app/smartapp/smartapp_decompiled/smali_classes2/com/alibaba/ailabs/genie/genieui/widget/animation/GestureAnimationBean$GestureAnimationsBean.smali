.class public Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;
.super Ljava/lang/Object;
.source "GestureAnimationBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GestureAnimationsBean"
.end annotation


# instance fields
.field private id:I

.field private path:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;->id:I

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;->path:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;->id:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;->id:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;->path:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/GestureAnimationBean$GestureAnimationsBean;->type:Ljava/lang/String;

    return-void
.end method
