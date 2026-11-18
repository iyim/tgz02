.class public Lcom/taobao/android/dinamicx/DXRenderOptions;
.super Ljava/lang/Object;
.source "DXRenderOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;,
        Lcom/taobao/android/dinamicx/DXRenderOptions$DXRenderType;
    }
.end annotation


# static fields
.field public static final DEFAULT_PRERENDER_OPTIONS:Lcom/taobao/android/dinamicx/DXRenderOptions;

.field public static final DEFAULT_RENDER_OPTIONS:Lcom/taobao/android/dinamicx/DXRenderOptions;

.field public static final NORMAL:I = 0x0

.field public static final PRE_FETCH:I = 0x1

.field public static final PRE_RENDER:I = 0x2

.field public static final SIMPLE:I = 0x3


# instance fields
.field private fromStage:I

.field private heightSpec:I

.field private isCanceled:Z

.field private isControlEvent:Z

.field private objectUserContext:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private renderType:I

.field private toStage:I

.field private userContext:Lcom/taobao/android/dinamicx/DXUserContext;

.field private widthSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 108
    new-instance v0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->build()Lcom/taobao/android/dinamicx/DXRenderOptions;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/dinamicx/DXRenderOptions;->DEFAULT_RENDER_OPTIONS:Lcom/taobao/android/dinamicx/DXRenderOptions;

    .line 111
    new-instance v0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;-><init>()V

    const/4 v1, 0x2

    .line 112
    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->withPreType(I)Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->withToStage(I)Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->build()Lcom/taobao/android/dinamicx/DXRenderOptions;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/dinamicx/DXRenderOptions;->DEFAULT_PRERENDER_OPTIONS:Lcom/taobao/android/dinamicx/DXRenderOptions;

    return-void
.end method

.method private constructor <init>(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->access$000(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions;->widthSpec:I

    .line 97
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->access$100(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions;->heightSpec:I

    .line 98
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->access$200(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)Lcom/taobao/android/dinamicx/DXUserContext;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions;->userContext:Lcom/taobao/android/dinamicx/DXUserContext;

    .line 99
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->access$300(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions;->objectUserContext:Ljava/lang/Object;

    .line 100
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->access$400(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions;->isControlEvent:Z

    .line 101
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->access$500(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions;->isCanceled:Z

    .line 102
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->access$600(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions;->fromStage:I

    .line 103
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->access$700(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions;->toStage:I

    .line 104
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->access$800(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)I

    move-result p1

    iput p1, p0, Lcom/taobao/android/dinamicx/DXRenderOptions;->renderType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;Lcom/taobao/android/dinamicx/DXRenderOptions$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/DXRenderOptions;-><init>(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getFromStage()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions;->fromStage:I

    return v0
.end method

.method public getHeightSpec()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions;->heightSpec:I

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDefaultHeightSpec()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getObjectUserContext()Ljava/lang/Object;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions;->objectUserContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getRenderType()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions;->renderType:I

    return v0
.end method

.method public getToStage()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions;->toStage:I

    return v0
.end method

.method public getUserContext()Lcom/taobao/android/dinamicx/DXUserContext;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions;->userContext:Lcom/taobao/android/dinamicx/DXUserContext;

    return-object v0
.end method

.method public getWidthSpec()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions;->widthSpec:I

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDefaultWidthSpec()I

    move-result v0

    :cond_0
    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions;->isCanceled:Z

    return v0
.end method

.method public isControlEvent()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions;->isControlEvent:Z

    return v0
.end method

.method public setCanceled(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/DXRenderOptions;->isCanceled:Z

    return-void
.end method
