.class public Lcom/taobao/android/sku/dinamicx/event/OnScrollEvent;
.super Lcom/taobao/android/dinamicx/DXAbsEventHandler;
.source "OnScrollEvent.java"


# static fields
.field public static final DX_WIDGET_ID:J

.field private static final NAME:Ljava/lang/String; = "xskuOnScrolled"


# instance fields
.field private mScrollerLayout:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "xskuOnScrolled"

    .line 21
    invoke-static {v0}, Lcom/taobao/android/dinamicx/template/utils/DXHashUtil;->hash(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/taobao/android/sku/dinamicx/event/OnScrollEvent;->DX_WIDGET_ID:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/DXAbsEventHandler;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/taobao/android/sku/dinamicx/event/OnScrollEvent;->mScrollerLayout:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;[Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/taobao/android/sku/dinamicx/event/OnScrollEvent;->mScrollerLayout:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 38
    instance-of v0, p1, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    if-eqz v0, :cond_1

    .line 39
    nop

    nop

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->getOffsetX()I

    move-result p1

    if-eqz p2, :cond_1

    .line 40
    array-length v0, p2

    if-lez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/taobao/android/sku/dinamicx/event/OnScrollEvent;->mScrollerLayout:Ljava/util/Map;

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    int-to-float p1, p1

    invoke-static {p3, p1}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->px2ap(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
