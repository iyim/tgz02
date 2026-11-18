.class public Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
.super Ljava/lang/Object;
.source "DXWidgetNode.java"

# interfaces
.implements Lcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;,
        Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;,
        Lcom/taobao/android/dinamicx/widget/DXWidgetNode$Builder;,
        Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXGravity;,
        Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXNodePropertyInitMask;,
        Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXWidgetNodeStatFlag;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_AUTO:I = 0x3

.field public static final ACCESSIBILITY_DEF:I = -0x1

.field public static final ACCESSIBILITY_OFF:I = 0x0

.field public static final ACCESSIBILITY_OFF_CHILD:I = 0x2

.field public static final ACCESSIBILITY_ON:I = 0x1

.field public static final BORDER_TYPE_DASH:I = 0x1

.field public static final BORDER_TYPE_NORMAL:I = 0x0

.field public static final DIRECTION_NOT_SET:I = -0x1

.field public static final DXGRAVITY_RLT_DELTA:I = 0x6

.field public static final DXGravityCenter:I = 0x4

.field public static final DXGravityCenterBottom:I = 0x5

.field public static final DXGravityCenterTop:I = 0x3

.field public static final DXGravityLeftBottom:I = 0x2

.field public static final DXGravityLeftCenter:I = 0x1

.field public static final DXGravityLeftTop:I = 0x0

.field public static final DXGravityRightBottom:I = 0x8

.field public static final DXGravityRightCenter:I = 0x7

.field public static final DXGravityRightTop:I = 0x6

.field public static final DX_WIDGET_NODE_ATTR_PARSED:I = 0x2

.field public static final DX_WIDGET_NODE_BIND_CHILD_CALLED:I = 0x1000

.field public static final DX_WIDGET_NODE_FLATTEND:I = 0x80

.field public static final DX_WIDGET_NODE_FORCE_LAYOUT:I = 0x4000

.field public static final DX_WIDGET_NODE_IS_PRE_RENDERED:I = 0x2000

.field public static final DX_WIDGET_NODE_LAID_OUT:I = 0x20

.field public static final DX_WIDGET_NODE_MEASURED:I = 0x8

.field public static final DX_WIDGET_NODE_NEED_FLATTEN:I = 0x40

.field public static final DX_WIDGET_NODE_NEED_LAYOUT:I = 0x10

.field public static final DX_WIDGET_NODE_NEED_MEASURE:I = 0x4

.field public static final DX_WIDGET_NODE_NEED_PARSE:I = 0x1

.field public static final DX_WIDGET_NODE_NEED_RENDER:I = 0x100

.field public static final DX_WIDGET_NODE_PARSED:I = 0x8000

.field public static final DX_WIDGET_NODE_PARSE_IN_MEASURE:I = 0x400

.field public static final DX_WIDGET_NODE_RENDERED:I = 0x200

.field public static final DX_WIDGET_NODE_VISIBILITY_PARSED:I = 0x800

.field public static final GONE:I = 0x2

.field public static final INVISIBLE:I = 0x1

.field public static final IS_ACCESSIBILITY_FALSE:I = 0x0

.field public static final IS_ACCESSIBILITY_TRUE:I = 0x1

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field public static final LAYOUT_GRAVITY_INIT_MASK:I = 0x1

.field public static final LISTDATA_INIT_MASK:I = 0x2

.field public static final MATCH_CONTENT:I = -0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10

.field public static final MEASURED_SIZE_MASK:I = 0xffffff

.field public static final MEASURED_STATE_MASK:I = -0x1000000

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000

.field public static final NO:I = 0x0

.field public static final TAG_WIDGET_NODE:I

.field public static final VISIBLE:I = 0x0

.field public static final YES:I = 0x1

.field private static attributeThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static sAlwaysRemeasureExactly:Z


# instance fields
.field private DEFAULT:I

.field accessibility:I

.field accessibilityText:Ljava/lang/String;

.field alpha:F

.field animation:Ljava/lang/String;

.field private autoId:I

.field backGroundColor:I

.field private backgroundGradient:Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;

.field bindingXExecutingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;",
            ">;"
        }
    .end annotation
.end field

.field bindingXSpecMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;",
            ">;"
        }
    .end annotation
.end field

.field borderColor:I

.field borderType:I

.field borderWidth:I

.field bottom:I

.field childGravity:I

.field children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/widget/DXWidgetNode;",
            ">;"
        }
    .end annotation
.end field

.field private childrenCount:I

.field clipChildren:Z

.field cornerRadius:I

.field cornerRadiusLeftBottom:I

.field cornerRadiusLeftTop:I

.field cornerRadiusRightBottom:I

.field cornerRadiusRightTop:I

.field dXRuntimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

.field private darkModeColorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field dashGap:I

.field dashWidth:I

.field private dataParsersExprNode:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/expression/DXExprNode;",
            ">;"
        }
    .end annotation
.end field

.field private direction:I

.field private disableDarkMode:Z

.field enabled:I

.field private enumMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private eventHandlersExprNode:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/expression/DXExprNode;",
            ">;"
        }
    .end annotation
.end field

.field private hasHandleDark:Z

.field isFlatten:Z

.field private lastAutoId:I

.field layoutGravity:I

.field layoutHeight:I

.field layoutWidth:I

.field left:I

.field marginBottom:I

.field marginLeft:I

.field marginRight:I

.field marginTop:I

.field measuredHeight:I

.field measuredWidth:I

.field minHeight:I

.field minWidth:I

.field needSetBackground:Z

.field oldHeightMeasureSpec:I

.field oldWidthMeasureSpec:I

.field paddingBottom:I

.field paddingLeft:I

.field paddingRight:I

.field paddingTop:I

.field parentWidget:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

.field privateFlags:I

.field propertyInitFlag:I

.field private realLayoutAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

.field private referenceNode:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/dinamicx/widget/DXWidgetNode;",
            ">;"
        }
    .end annotation
.end field

.field right:I

.field rotationX:F

.field rotationY:F

.field rotationZ:F

.field scaleX:F

.field scaleY:F

.field private sourceWidgetWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/dinamicx/widget/DXWidgetNode;",
            ">;"
        }
    .end annotation
.end field

.field top:I

.field translateX:F

.field translateY:F

.field userId:Ljava/lang/String;

.field visibility:I

.field private weakView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field weight:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    sget v0, Lcom/taobao/android/dinamic/R$id;->dinamicXWidgetNodeTag:I

    sput v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->TAG_WIDGET_NODE:I

    const/4 v0, 0x0

    .line 180
    sput-boolean v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->sAlwaysRemeasureExactly:Z

    .line 1056
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->attributeThreadLocal:Ljava/lang/ThreadLocal;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 6

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutGravity:I

    .line 110
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childGravity:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 112
    iput v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->alpha:F

    .line 113
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadius:I

    .line 114
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftTop:I

    .line 115
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightTop:I

    .line 116
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftBottom:I

    .line 117
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightBottom:I

    const/4 v2, -0x1

    .line 118
    iput v2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderWidth:I

    .line 119
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderColor:I

    .line 120
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderType:I

    .line 121
    iput v2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dashWidth:I

    .line 122
    iput v2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dashGap:I

    .line 123
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backGroundColor:I

    const/4 v3, 0x1

    .line 134
    iput-boolean v3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->clipChildren:Z

    .line 147
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->DEFAULT:I

    .line 148
    iget v4, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->DEFAULT:I

    int-to-float v5, v4

    iput v5, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->translateX:F

    int-to-float v5, v4

    .line 149
    iput v5, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->translateY:F

    .line 150
    iput v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->scaleX:F

    .line 151
    iput v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->scaleY:F

    int-to-float v5, v4

    .line 152
    iput v5, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->rotationX:F

    int-to-float v5, v4

    .line 153
    iput v5, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->rotationY:F

    int-to-float v4, v4

    .line 154
    iput v4, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->rotationZ:F

    .line 164
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->disableDarkMode:Z

    const/high16 v4, -0x80000000

    .line 178
    iput v4, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->oldWidthMeasureSpec:I

    .line 179
    iput v4, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->oldHeightMeasureSpec:I

    .line 299
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->visibility:I

    .line 300
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutGravity:I

    .line 301
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childGravity:I

    .line 302
    iput v2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->direction:I

    .line 303
    iput v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->alpha:F

    .line 304
    iput v2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->accessibility:I

    .line 305
    iput v3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->enabled:I

    return-void
.end method

.method public static combineMeasuredStates(II)I
    .locals 0

    or-int/2addr p0, p1

    return p0
.end method

.method public static getAbsoluteGravity(II)I
    .locals 1

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x6

    if-eqz p0, :cond_2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, p1, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    return p0

    :cond_1
    sub-int/2addr p0, p1

    return p0

    :cond_2
    add-int/2addr p0, p1

    :cond_3
    return p0
.end method

.method public static getDefaultSize(II)I
    .locals 2

    .line 655
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 656
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :cond_1
    :goto_0
    return p0
.end method

.method private getRealView()Landroid/view/View;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->weakView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 752
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private prePareBindEvent(J)V
    .locals 1

    .line 1772
    new-instance v0, Lcom/taobao/android/dinamicx/expression/event/DXEvent;

    invoke-direct {v0, p1, p2}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;-><init>(J)V

    const/4 p1, 0x1

    .line 1773
    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;->setPrepareBind(Z)V

    .line 1774
    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    return-void
.end method

.method public static resolveSize(II)I
    .locals 1

    const/4 v0, 0x0

    .line 612
    invoke-static {p0, p1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->resolveSizeAndState(III)I

    move-result p0

    const p1, 0xffffff

    and-int/2addr p0, p1

    return p0
.end method

.method public static resolveSizeAndState(III)I
    .locals 2

    .line 632
    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v0

    .line 633
    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    goto :goto_0

    :cond_1
    if-ge p1, p0, :cond_2

    const/high16 p0, 0x1000000

    or-int/2addr p0, p1

    :cond_2
    :goto_0
    const/high16 p1, -0x1000000

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final addChild(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
    .locals 1

    const/4 v0, 0x1

    .line 402
    invoke-virtual {p0, p1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->addChild(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    return-void
.end method

.method public final addChild(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V
    .locals 1

    if-eqz p1, :cond_2

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->children:Ljava/util/List;

    if-nez v0, :cond_1

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->children:Ljava/util/List;

    const/4 v0, 0x0

    .line 416
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childrenCount:I

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childrenCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childrenCount:I

    .line 420
    iput-object p0, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->parentWidget:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 421
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dXRuntimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 422
    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->cloneWithWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    iput-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dXRuntimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    :cond_2
    :goto_0
    return-void
.end method

.method bindDataEvent()V
    .locals 3

    .line 1786
    new-instance v0, Lcom/taobao/android/dinamicx/expression/event/DXEvent;

    const-wide v1, 0x253ec9391dc532deL

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    return-void
.end method

.method public final bindEvent(Landroid/content/Context;)V
    .locals 5

    .line 1726
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->eventHandlersExprNode:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    if-nez v0, :cond_0

    return-void

    .line 1729
    :cond_0
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getRealView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 1730
    :goto_0
    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->eventHandlersExprNode:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1731
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getReferenceNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->eventHandlersExprNode:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-virtual {v3, v1}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {v2, p1, v0, v3, v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onBindEvent(Landroid/content/Context;Landroid/view/View;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bindRuntimeContext(Lcom/taobao/android/dinamicx/DXRuntimeContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 1985
    invoke-virtual {p0, p1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindRuntimeContext(Lcom/taobao/android/dinamicx/DXRuntimeContext;Z)V

    return-void
.end method

.method public bindRuntimeContext(Lcom/taobao/android/dinamicx/DXRuntimeContext;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 2002
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dXRuntimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getSubData()Ljava/lang/Object;

    move-result-object v0

    .line 2003
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dXRuntimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getSubdataIndex()I

    move-result v1

    .line 2006
    :cond_1
    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dXRuntimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    if-eq v2, p1, :cond_2

    .line 2007
    invoke-virtual {p1, p0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->cloneWithWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dXRuntimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    if-eqz p2, :cond_2

    .line 2009
    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dXRuntimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    invoke-virtual {v2, v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->setSubData(Ljava/lang/Object;)V

    .line 2010
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dXRuntimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->setSubdataIndex(I)V

    .line 2014
    :cond_2
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childrenCount:I

    if-lez v0, :cond_3

    .line 2015
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 2016
    invoke-virtual {v1, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindRuntimeContext(Lcom/taobao/android/dinamicx/DXRuntimeContext;Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0

    .line 2135
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;-><init>()V

    return-object p1
.end method

.method public containsExecutingAnimationSpec(Ljava/lang/String;)Z
    .locals 1

    .line 2795
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindingXExecutingMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2798
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindingXExecutingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final createView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 761
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getRealView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 765
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getReferenceNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    .line 766
    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onCreateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 767
    sget p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->TAG_WIDGET_NODE:I

    invoke-virtual {v0, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 768
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->weakView:Ljava/lang/ref/WeakReference;

    .line 769
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    :cond_0
    return-object v0
.end method

.method public final deepClone(Lcom/taobao/android/dinamicx/DXRuntimeContext;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 3

    const/4 v0, 0x1

    .line 1129
    invoke-virtual {p0, p1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->shallowClone(Lcom/taobao/android/dinamicx/DXRuntimeContext;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 1133
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->children:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->children:Ljava/util/List;

    const/4 v1, 0x0

    .line 1135
    :goto_0
    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1136
    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    invoke-virtual {v2, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->deepClone(Lcom/taobao/android/dinamicx/DXRuntimeContext;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->addChild(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected extraHandleDark()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibility()I
    .locals 1

    .line 2321
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->accessibility:I

    return v0
.end method

.method public getAccessibilityText()Ljava/lang/String;
    .locals 1

    .line 2313
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->accessibilityText:Ljava/lang/String;

    return-object v0
.end method

.method public getAlpha()F
    .locals 1

    .line 2259
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->alpha:F

    return v0
.end method

.method public getAnimation()Ljava/lang/String;
    .locals 1

    .line 2589
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->animation:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoId()I
    .locals 1

    .line 540
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->autoId:I

    return v0
.end method

.method public getBackGroundColor()I
    .locals 1

    .line 2300
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backGroundColor:I

    return v0
.end method

.method public getBackgroundGradient()Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;
    .locals 1

    .line 2722
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backgroundGradient:Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;

    return-object v0
.end method

.method public getBindingXExecutingMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;",
            ">;"
        }
    .end annotation

    .line 2791
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindingXExecutingMap:Ljava/util/Map;

    return-object v0
.end method

.method public getBindingXSpecMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;",
            ">;"
        }
    .end annotation

    .line 2661
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindingXSpecMap:Ljava/util/Map;

    return-object v0
.end method

.method public getBorderColor()I
    .locals 1

    .line 2278
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderColor:I

    return v0
.end method

.method public getBorderType()I
    .locals 1

    .line 2289
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderType:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 2267
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderWidth:I

    return v0
.end method

.method public getBottom()I
    .locals 1

    .line 2239
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bottom:I

    return v0
.end method

.method public getChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    if-ltz p1, :cond_1

    .line 325
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childrenCount:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->children:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildGravity()I
    .locals 1

    .line 2479
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childGravity:I

    return v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/widget/DXWidgetNode;",
            ">;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->children:Ljava/util/List;

    return-object v0
.end method

.method public getChildrenCount()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childrenCount:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .line 2342
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadius:I

    return v0
.end method

.method public getCornerRadiusLeftBottom()I
    .locals 1

    .line 2370
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftBottom:I

    return v0
.end method

.method public getCornerRadiusLeftTop()I
    .locals 1

    .line 2362
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftTop:I

    return v0
.end method

.method public getCornerRadiusRightBottom()I
    .locals 1

    .line 2374
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightBottom:I

    return v0
.end method

.method public getCornerRadiusRightTop()I
    .locals 1

    .line 2366
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightTop:I

    return v0
.end method

.method public getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dXRuntimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    return-object v0
.end method

.method public getDataParsersExprNode()Landroid/support/v4/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LongSparseArray<",
            "Lcom/taobao/android/dinamicx/expression/DXExprNode;",
            ">;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dataParsersExprNode:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-object v0
.end method

.method public getDefaultValueForAttr(J)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultValueForDoubleAttr(J)D
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getDefaultValueForIntAttr(J)I
    .locals 4

    const/4 v0, 0x0

    const-wide v1, 0x123cef8d32c5L

    cmp-long v3, v1, p1

    if-eqz v3, :cond_4

    const-wide v1, 0x2134aae97d133fL

    cmp-long v3, v1, p1

    if-eqz v3, :cond_4

    const-wide v1, -0xcb88468e6490dedL

    cmp-long v3, v1, p1

    if-eqz v3, :cond_4

    const-wide v1, -0x40ddcefe19dee979L    # -1.387896364254857E-4

    cmp-long v3, v1, p1

    if-eqz v3, :cond_4

    const-wide v1, -0x24a8c882d4d47446L    # -1.0299582288254166E132

    cmp-long v3, v1, p1

    if-eqz v3, :cond_4

    const-wide v1, 0x5a4a1cc0544463ffL    # 8.837989474732166E126

    cmp-long v3, v1, p1

    if-eqz v3, :cond_4

    const-wide v1, -0x5422b7cd07b2993L

    cmp-long v3, v1, p1

    if-eqz v3, :cond_4

    const-wide v1, 0x2cd1cba4de1111e1L    # 8.53122034330043E-93

    cmp-long v3, v1, p1

    if-eqz v3, :cond_4

    const-wide v1, -0x2488623792742aecL

    cmp-long v3, v1, p1

    if-eqz v3, :cond_4

    const-wide v1, -0x41dc927e7dbaeda7L    # -2.2616886299190676E-9

    cmp-long v3, v1, p1

    if-eqz v3, :cond_4

    const-wide v1, 0x43b83460932c0a8dL    # 1.7441251409145725E18

    cmp-long v3, v1, p1

    if-eqz v3, :cond_4

    const-wide v1, -0x2ca8ab17b09add0aL    # -3.0417568455840657E93

    cmp-long v3, v1, p1

    if-eqz v3, :cond_4

    const-wide v1, 0x68251a045adab5caL    # 4.813746451086927E193

    cmp-long v3, v1, p1

    if-eqz v3, :cond_4

    const-wide v1, 0x5086155c409bd152L    # 8.182680092428053E79

    cmp-long v3, v1, p1

    if-eqz v3, :cond_4

    const-wide v1, -0x6f4c88169e85c877L    # -3.210211635119481E-228

    cmp-long v3, v1, p1

    if-eqz v3, :cond_4

    const-wide v1, -0x6f4d2a7dda7c0378L

    cmp-long v3, v1, p1

    if-eqz v3, :cond_4

    const-wide v1, 0x1997bf62eea68f2aL    # 2.183144417878833E-185

    cmp-long v3, v1, p1

    if-eqz v3, :cond_4

    const-wide v1, -0x5b4fa90561adc416L    # -5.755030433118442E-132

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-wide v1, 0xf5bec358c6bL

    cmp-long v3, v1, p1

    if-eqz v3, :cond_3

    const-wide v1, 0x42ae0afbeefa07d2L    # 1.651626262451591E13

    cmp-long v3, v1, p1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-wide v1, 0x579cb14ee9f16dfdL    # 1.1040492304388282E114

    cmp-long v3, v1, p1

    if-eqz v3, :cond_2

    const-wide v1, -0x61c12ae3c39c233eL    # -5.354150382126096E-163

    cmp-long v3, v1, p1

    if-eqz v3, :cond_2

    const-wide v1, 0x787413396f0ff336L

    cmp-long v3, v1, p1

    if-eqz v3, :cond_2

    const-wide v1, -0x33e14839358d90f9L    # -4.820480984549792E58

    cmp-long v3, v1, p1

    if-eqz v3, :cond_2

    const-wide v1, 0x17786d52ac6fe47bL

    cmp-long v3, v1, p1

    if-nez v3, :cond_2

    nop

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public getDefaultValueForListAttr(J)Lcom/alibaba/fastjson/JSONArray;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultValueForLongAttr(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getDefaultValueForMapAttr(J)Lcom/alibaba/fastjson/JSONObject;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultValueForObjectAttr(J)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultValueForStringAttr(J)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getDirection()I
    .locals 2

    .line 2487
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->direction:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2488
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dXRuntimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    if-eqz v0, :cond_0

    .line 2489
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getParentDirectionSpec()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public getEnabled()I
    .locals 1

    .line 2503
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->enabled:I

    return v0
.end method

.method public getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->enumMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-object v0
.end method

.method public getEventHandlersExprNode()Landroid/support/v4/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LongSparseArray<",
            "Lcom/taobao/android/dinamicx/expression/DXExprNode;",
            ">;"
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->eventHandlersExprNode:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .line 717
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bottom:I

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLastAutoId()I
    .locals 1

    .line 2699
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->lastAutoId:I

    return v0
.end method

.method protected getLayoutDirection()I
    .locals 1

    .line 2053
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDirection()I

    move-result v0

    return v0
.end method

.method public getLayoutGravity()I
    .locals 1

    .line 2470
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutGravity:I

    return v0
.end method

.method public getLayoutHeight()I
    .locals 1

    .line 2414
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    return v0
.end method

.method public getLayoutWidth()I
    .locals 1

    .line 2406
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 2227
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->left:I

    return v0
.end method

.method public getLeftMarginWithDirection()I
    .locals 2

    .line 2084
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2085
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    return v0

    .line 2087
    :cond_0
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    return v0
.end method

.method public getMarginBottom()I
    .locals 1

    .line 2585
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    return v0
.end method

.method public getMarginLeft()I
    .locals 1

    .line 2561
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    return v0
.end method

.method public getMarginRight()I
    .locals 1

    .line 2577
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    return v0
.end method

.method public getMarginTop()I
    .locals 1

    .line 2569
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    return v0
.end method

.method public final getMeasuredHeight()I
    .locals 2

    .line 694
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->measuredHeight:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredHeightAndState()I
    .locals 1

    .line 709
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->measuredHeight:I

    return v0
.end method

.method public final getMeasuredState()I
    .locals 2

    .line 675
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->measuredWidth:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->measuredHeight:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidth()I
    .locals 2

    .line 701
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->measuredWidth:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidthAndState()I
    .locals 1

    .line 705
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->measuredWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 2511
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->minHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 2519
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->minWidth:I

    return v0
.end method

.method getNextLocationOffset(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 2450
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 2434
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingLeft:I

    return v0
.end method

.method public getPaddingLeftWithDirection()I
    .locals 2

    .line 2098
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2099
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingRight:I

    return v0

    .line 2101
    :cond_0
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 2442
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingRight:I

    return v0
.end method

.method public getPaddingRightWithDirection()I
    .locals 2

    .line 2105
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2106
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingLeft:I

    return v0

    .line 2108
    :cond_0
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 2458
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingTop:I

    return v0
.end method

.method public getParentWidget()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 2390
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->parentWidget:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method public getReferenceNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 2734
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->referenceNode:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2738
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method public getRight()I
    .locals 1

    .line 2231
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->right:I

    return v0
.end method

.method public getRightMarginWithDirection()I
    .locals 2

    .line 2091
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2092
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    return v0

    .line 2094
    :cond_0
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    return v0
.end method

.method public getRotationX()F
    .locals 1

    .line 2629
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->rotationX:F

    return v0
.end method

.method public getRotationY()F
    .locals 1

    .line 2637
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->rotationY:F

    return v0
.end method

.method public getRotationZ()F
    .locals 1

    .line 2645
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->rotationZ:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 2613
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 2621
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->scaleY:F

    return v0
.end method

.method public getSourceWidget()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 2708
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->sourceWidgetWR:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2711
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method public getStatInPrivateFlags(I)Z
    .locals 1

    .line 2695
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .line 338
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->minHeight:I

    return v0
.end method

.method protected final getSuggestedMinimumWidth()I
    .locals 1

    .line 730
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->minWidth:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .line 2235
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->top:I

    return v0
.end method

.method public getTranslateX()F
    .locals 1

    .line 2597
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->translateX:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    .line 2605
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->translateY:F

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 2398
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->userId:Ljava/lang/String;

    return-object v0
.end method

.method final getVirtualChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0

    .line 687
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    return-object p1
.end method

.method public getVirtualChildCount()I
    .locals 1

    .line 318
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childrenCount:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->visibility:I

    return v0
.end method

.method public getWRView()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->weakView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getWeight()D
    .locals 2

    .line 2422
    iget-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->weight:D

    return-wide v0
.end method

.method public getWidth()I
    .locals 2

    .line 713
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->right:I

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hasAccessibilityAuto()Z
    .locals 2

    .line 2338
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->accessibility:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAccessibilityOn()Z
    .locals 2

    .line 2334
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->accessibility:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasCornerRadius()Z
    .locals 1

    .line 1362
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftTop:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightBottom:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftBottom:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightTop:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadius:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasExecutingAnimationSpec()Z
    .locals 2

    .line 2777
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindingXExecutingMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2780
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public indexOf(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 2032
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildrenCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2033
    invoke-virtual {p0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getAutoId()I

    move-result v2

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getAutoId()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public insertChild(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;I)V
    .locals 1

    const/4 v0, 0x1

    .line 433
    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->insertChild(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IZ)V

    return-void
.end method

.method public insertChild(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IZ)V
    .locals 1

    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_2

    .line 444
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childrenCount:I

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->children:Ljava/util/List;

    if-nez v0, :cond_1

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->children:Ljava/util/List;

    const/4 v0, 0x0

    .line 450
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childrenCount:I

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->children:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 453
    iget p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childrenCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childrenCount:I

    .line 454
    iput-object p0, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->parentWidget:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 455
    iget-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dXRuntimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 456
    invoke-virtual {p2, p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->cloneWithWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    iput-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dXRuntimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    :cond_2
    :goto_0
    return-void
.end method

.method public final invalidateLayoutCache()V
    .locals 1

    .line 1268
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    .line 1269
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    and-int/lit8 v0, v0, -0x29

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    .line 1270
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->parentWidget:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v0, :cond_0

    .line 1271
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->invalidateLayoutCache()V

    :cond_0
    return-void
.end method

.method public final invalidateParseCache()V
    .locals 1

    .line 1227
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    .line 1228
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    .line 1229
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->parentWidget:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v0, :cond_0

    .line 1230
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->invalidateParseCache()V

    :cond_0
    return-void
.end method

.method public isClipChildren()Z
    .locals 1

    .line 2755
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->clipChildren:Z

    return v0
.end method

.method public isDisableDarkMode()Z
    .locals 1

    .line 2653
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->disableDarkMode:Z

    return v0
.end method

.method public isFlatten()Z
    .locals 1

    .line 2527
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->isFlatten:Z

    return v0
.end method

.method public isNeedSetBackground()Z
    .locals 1

    .line 2536
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    return v0
.end method

.method public final layout(IIII)V
    .locals 6

    .line 343
    :try_start_0
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 344
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->oldWidthMeasureSpec:I

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->oldHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onMeasure(II)V

    .line 345
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    .line 346
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    .line 348
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setFrame(IIII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 350
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    :cond_1
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 351
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onLayout(ZIIII)V

    .line 352
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    .line 354
    :cond_2
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    and-int/lit16 p1, p1, -0x4001

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    .line 355
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 357
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 358
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 361
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 362
    new-instance p3, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const p4, 0x13887

    const-string v0, "Pipeline_Detail"

    const-string v1, "Pipeline_Detail_PerformLayout"

    invoke-direct {p3, v0, v1, p4}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 364
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 365
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final measure(II)V
    .locals 7

    .line 567
    :try_start_0
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 568
    :goto_0
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->oldWidthMeasureSpec:I

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->oldHeightMeasureSpec:I

    if-eq p2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 570
    :goto_2
    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v4, v5, :cond_3

    .line 571
    invoke-static {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v4

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 572
    :goto_3
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v5

    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 573
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v5

    invoke-static {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result v6

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    .line 575
    :goto_4
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->oldWidthMeasureSpec:I

    .line 576
    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->oldHeightMeasureSpec:I

    if-eqz v4, :cond_5

    const/16 v6, 0x400

    .line 579
    invoke-virtual {p0, v6}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getStatInPrivateFlags(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 581
    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result p1

    .line 582
    invoke-static {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result p2

    .line 581
    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setMeasuredDimension(II)V

    return-void

    :cond_5
    if-eqz v1, :cond_6

    .line 587
    sget-boolean v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->sAlwaysRemeasureExactly:Z

    if-nez v1, :cond_7

    if-eqz v4, :cond_7

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :cond_7
    :goto_5
    if-nez v0, :cond_8

    if-eqz v2, :cond_a

    .line 591
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onMeasure(II)V

    .line 592
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    .line 593
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    .line 594
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 597
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 598
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 600
    :cond_9
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 601
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 602
    new-instance v0, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v1, 0x13886

    const-string v2, "Pipeline_Detail"

    const-string v3, "Pipeline_Detail_PerformMeasure"

    invoke-direct {v0, v2, v3, v1}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 604
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 605
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_6
    return-void
.end method

.method protected needHandleDark()Z
    .locals 1

    .line 2869
    invoke-static {}, Lcom/taobao/android/dinamicx/DXDarkModeCenter;->isSupportDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2870
    invoke-static {}, Lcom/taobao/android/dinamicx/DXDarkModeCenter;->isDark()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->isDisableDarkMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newDataParsersExprNode(I)V
    .locals 1

    .line 524
    new-instance v0, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dataParsersExprNode:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-void
.end method

.method public newEnumMap()V
    .locals 1

    .line 532
    new-instance v0, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->enumMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-void
.end method

.method public newEventHandlersExprNode(I)V
    .locals 1

    .line 516
    new-instance v0, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->eventHandlersExprNode:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-void
.end method

.method public onBeforeBindChildData()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onBindEvent(Landroid/content/Context;Landroid/view/View;J)V
    .locals 2

    .line 1744
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->enabled:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-wide v0, 0x11316e336ae7L

    cmp-long p1, p3, v0

    if-nez p1, :cond_0

    .line 1746
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$1;

    invoke-direct {p1, p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$1;-><init>(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const-wide v0, -0x5ad364f76a2d1265L

    cmp-long p1, p3, v0

    if-nez p1, :cond_1

    .line 1753
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$2;

    invoke-direct {p1, p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$2;-><init>(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    :goto_0
    const-wide p1, 0x253ec9391dc532deL

    cmp-long v0, p3, p1

    if-nez v0, :cond_2

    .line 1764
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindDataEvent()V

    .line 1768
    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->prePareBindEvent(J)V

    return-void
.end method

.method public onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V
    .locals 2

    .line 1153
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->userId:Ljava/lang/String;

    .line 1154
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->autoId:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->autoId:I

    .line 1156
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->eventHandlersExprNode:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->eventHandlersExprNode:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    .line 1157
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dataParsersExprNode:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dataParsersExprNode:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    .line 1158
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->enumMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->enumMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    .line 1159
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    .line 1160
    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->isFlatten:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->isFlatten:Z

    .line 1161
    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    .line 1162
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->animation:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->animation:Ljava/lang/String;

    .line 1163
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->propertyInitFlag:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->propertyInitFlag:I

    .line 1165
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    .line 1166
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    .line 1167
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->measuredWidth:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->measuredWidth:I

    .line 1168
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->measuredHeight:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->measuredHeight:I

    .line 1169
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->left:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->left:I

    .line 1170
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->top:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->top:I

    .line 1171
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->right:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->right:I

    .line 1172
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bottom:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bottom:I

    .line 1173
    iget-wide v0, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->weight:D

    iput-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->weight:D

    .line 1174
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    .line 1175
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    .line 1176
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    .line 1177
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    .line 1178
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingLeft:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingLeft:I

    .line 1179
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingTop:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingTop:I

    .line 1180
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingRight:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingRight:I

    .line 1181
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingBottom:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingBottom:I

    .line 1182
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->visibility:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->visibility:I

    .line 1183
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutGravity:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutGravity:I

    .line 1184
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childGravity:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childGravity:I

    .line 1185
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->direction:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->direction:I

    .line 1186
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->alpha:F

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->alpha:F

    .line 1187
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadius:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadius:I

    .line 1188
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftTop:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftTop:I

    .line 1189
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightTop:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightTop:I

    .line 1190
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftBottom:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftBottom:I

    .line 1191
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightBottom:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightBottom:I

    .line 1192
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderWidth:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderWidth:I

    .line 1193
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderColor:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderColor:I

    .line 1194
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderType:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderType:I

    .line 1195
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dashWidth:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dashWidth:I

    .line 1196
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dashGap:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dashGap:I

    .line 1197
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backGroundColor:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backGroundColor:I

    .line 1198
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->accessibility:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->accessibility:I

    .line 1199
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->accessibilityText:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->accessibilityText:Ljava/lang/String;

    .line 1200
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->enabled:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->enabled:I

    .line 1201
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->minHeight:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->minHeight:I

    .line 1202
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->minWidth:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->minWidth:I

    .line 1204
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->translateX:F

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->translateX:F

    .line 1205
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->translateY:F

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->translateY:F

    .line 1206
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->scaleX:F

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->scaleX:F

    .line 1207
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->scaleY:F

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->scaleY:F

    .line 1208
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->rotationX:F

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->rotationX:F

    .line 1209
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindingXSpecMap:Ljava/util/Map;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindingXSpecMap:Ljava/util/Map;

    .line 1210
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindingXExecutingMap:Ljava/util/Map;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindingXExecutingMap:Ljava/util/Map;

    .line 1213
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->lastAutoId:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->lastAutoId:I

    .line 1214
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->sourceWidgetWR:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->sourceWidgetWR:Ljava/lang/ref/WeakReference;

    .line 1216
    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->clipChildren:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->clipChildren:Z

    .line 1218
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backgroundGradient:Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backgroundGradient:Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;

    .line 1219
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->darkModeColorMap:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->darkModeColorMap:Ljava/util/HashMap;

    .line 1220
    iget-boolean p1, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->disableDarkMode:Z

    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->disableDarkMode:Z

    return-void
.end method

.method protected onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 1702
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z
    .locals 12

    const-string v0, " exprNode name "

    const-string v1, " exprNode id "

    const/4 v2, 0x0

    .line 1852
    :try_start_0
    iget-object v3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->eventHandlersExprNode:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    if-eqz v3, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 1855
    :cond_0
    iget-object v3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->eventHandlersExprNode:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;->getEventId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/dinamicx/expression/DXExprNode;

    if-nez v3, :cond_1

    return v2

    .line 1860
    :cond_1
    instance-of v4, v3, Lcom/taobao/android/dinamicx/expression/DXEventNode;

    if-nez v4, :cond_3

    instance-of v4, v3, Lcom/taobao/android/dinamicx/expression/DXSerialBlockNode;

    if-nez v4, :cond_3

    .line 1861
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1862
    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1863
    new-instance v5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const-string v6, "Event"

    const-string v7, "Event_Cast_Exception"

    const v8, 0x1dc90

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "eventid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1866
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;->getEventId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v3, Lcom/taobao/android/dinamicx/expression/DXExprNode;->exprId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/taobao/android/dinamicx/expression/DXExprNode;->name:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1868
    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v3

    iget-object v3, v3, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return v2

    .line 1879
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/taobao/android/dinamicx/expression/DXExprNode;->evaluate(Lcom/taobao/android/dinamicx/expression/event/DXEvent;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v2

    :catch_0
    move-exception v3

    .line 1882
    invoke-static {v3}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    .line 1885
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1886
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getBizType()Ljava/lang/String;

    move-result-object v4

    .line 1887
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v5

    move-object v6, v4

    move-object v7, v5

    goto :goto_1

    :cond_5
    const-string v5, "dinamicx"

    move-object v7, v4

    move-object v6, v5

    :goto_1
    const-string v4, ""

    if-eqz p1, :cond_6

    .line 1891
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "eventId : "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;->getEventId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1892
    iget-object v5, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->eventHandlersExprNode:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    if-eqz v5, :cond_6

    .line 1893
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;->getEventId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/expression/DXExprNode;

    if-eqz p1, :cond_6

    .line 1895
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/taobao/android/dinamicx/expression/DXExprNode;->exprId:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/expression/DXExprNode;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1899
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " crash stack: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const v10, 0x9c49

    const-string v8, "Pipeline"

    const-string v9, "Pipeline_Stage_ON_EVENT"

    .line 1900
    invoke-static/range {v6 .. v11}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method onLongTap()V
    .locals 3

    .line 1782
    new-instance v0, Lcom/taobao/android/dinamicx/expression/event/DXEvent;

    const-wide v1, -0x5ad364f76a2d1265L

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1680
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultSize(II)I

    move-result p1

    .line 1681
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultSize(II)I

    move-result p2

    .line 1680
    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRenderView(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onSetDoubleAttribute(JD)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onSetIntAttribute(JI)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onSetListAttribute(JLcom/alibaba/fastjson/JSONArray;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onSetLongAttribute(JJ)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onSetMapAttribute(JLcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onSetObjAttribute(JLjava/lang/Object;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onSetStringAttribute(JLjava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method final onTapEvent()V
    .locals 3

    .line 1778
    new-instance v0, Lcom/taobao/android/dinamicx/expression/event/DXEvent;

    const-wide v1, 0x11316e336ae7L

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    return-void
.end method

.method public final postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z
    .locals 1

    .line 1835
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->isFlatten:Z

    if-nez v0, :cond_0

    .line 1836
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    move-result p1

    return p1

    .line 1839
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getReferenceNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    move-result p1

    return p1
.end method

.method public putBindingXExecutingSpec(Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 2767
    iget-object v0, p1, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2770
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindingXExecutingMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 2771
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindingXExecutingMap:Ljava/util/Map;

    .line 2773
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindingXExecutingMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public queryRootWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 2

    move-object v0, p0

    .line 1972
    :goto_0
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getParentWidget()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1973
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getParentWidget()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public queryWTByAutoId(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 2

    .line 1954
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->autoId:I

    if-ne v0, p1, :cond_0

    return-object p0

    .line 1958
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildrenCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1959
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 1960
    invoke-virtual {v1, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->queryWTByAutoId(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public queryWTByUserId(Ljava/lang/String;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 3

    .line 1927
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1931
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 1935
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildrenCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1936
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 1937
    invoke-virtual {v2, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->queryWTByUserId(Ljava/lang/String;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_3
    return-object v1
.end method

.method public queryWidgetNodeByAutoId(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 1917
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->queryRootWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    .line 1918
    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->queryWTByAutoId(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    return-object p1
.end method

.method public queryWidgetNodeByUserId(Ljava/lang/String;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 1922
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->queryRootWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    .line 1923
    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->queryWTByUserId(Ljava/lang/String;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    return-object p1
.end method

.method public removeAllChild()V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->children:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 465
    iput v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childrenCount:I

    return-void

    .line 468
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 469
    iput v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childrenCount:I

    return-void
.end method

.method public removeBindingXSpec(Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;)V
    .locals 1

    .line 2760
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindingXExecutingMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2763
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindingXExecutingMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->name:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public removeChildWithAutoId(I)V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->children:Ljava/util/List;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childrenCount:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 481
    :goto_0
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childrenCount:I

    if-ge v0, v1, :cond_2

    .line 482
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 483
    iget v1, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->autoId:I

    if-ne v1, p1, :cond_1

    .line 484
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->children:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 485
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childrenCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childrenCount:I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method renderTransformedProperty(Landroid/view/View;)V
    .locals 2

    .line 860
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->translateX:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 861
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->translateX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 863
    :cond_0
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->translateY:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 864
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->translateY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 866
    :cond_1
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->rotationX:F

    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 867
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->rotationX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 869
    :cond_2
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->rotationY:F

    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 870
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->rotationY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 872
    :cond_3
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->rotationZ:F

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 873
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->rotationZ:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 876
    :cond_4
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->scaleX:F

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    .line 877
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->scaleX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 879
    :cond_5
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->scaleY:F

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 880
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->scaleY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_6
    return-void
.end method

.method public final renderView(Landroid/content/Context;)V
    .locals 5

    .line 788
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getRealView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 792
    :cond_0
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    and-int/lit16 v1, v1, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 800
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->visibility:I

    invoke-virtual {p0, v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setRealViewVisibility(Landroid/view/View;I)V

    .line 803
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    iget v4, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->alpha:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2

    .line 804
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->alpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 808
    :cond_2
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->enabled:I

    if-ne v1, v3, :cond_3

    const/4 v2, 0x1

    .line 809
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eq v1, v2, :cond_4

    .line 810
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 814
    :cond_4
    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->renderTransformedProperty(Landroid/view/View;)V

    .line 817
    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setAccessibility(Landroid/view/View;)V

    .line 822
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getReferenceNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v1

    .line 824
    invoke-virtual {v1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setBackground(Landroid/view/View;)V

    .line 826
    invoke-virtual {v1, p1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onRenderView(Landroid/content/Context;Landroid/view/View;)V

    .line 827
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt p1, v2, :cond_5

    .line 828
    instance-of p1, v0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    .line 829
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDirection()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 834
    :cond_5
    invoke-virtual {v1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setForceDark(Landroid/view/View;)V

    .line 837
    :cond_6
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    and-int/lit16 p1, p1, -0x101

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    .line 838
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 840
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 841
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 843
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 844
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 845
    new-instance v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v2, 0x15f92

    const-string v3, "Render"

    const-string v4, "Pipeline_Detail_Render_Detail"

    invoke-direct {v1, v3, v4, v2}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 847
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 848
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    return-void
.end method

.method public replaceChild(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)I
    .locals 4

    .line 497
    instance-of v0, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 501
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildrenCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 502
    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v2

    .line 503
    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getAutoId()I

    move-result v2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getAutoId()I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_1
    if-eq v0, v1, :cond_3

    .line 509
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getAutoId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->removeChildWithAutoId(I)V

    .line 510
    invoke-virtual {p0, p1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->insertChild(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;I)V

    :cond_3
    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public final requestLayout()V
    .locals 3

    .line 1317
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    .line 1318
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    and-int/lit8 v0, v0, -0x29

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    .line 1320
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->parentWidget:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v0, :cond_0

    .line 1322
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->requestLayout()V

    goto :goto_0

    .line 1324
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1328
    :cond_1
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxRenderPipeline()Lcom/taobao/android/dinamicx/DXRenderPipeline;

    move-result-object v1

    .line 1329
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxControlEventCenter()Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;

    move-result-object v2

    if-eqz v1, :cond_4

    if-nez v2, :cond_2

    goto :goto_0

    .line 1333
    :cond_2
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->getPipelineCacheManager()Lcom/taobao/android/dinamicx/DXPipelineCacheManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1335
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getCacheIdentify()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->removeCache(Ljava/lang/String;)V

    .line 1337
    :cond_3
    new-instance v0, Lcom/taobao/android/dinamicx/widget/event/DXPipelineScheduleEvent;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/widget/event/DXPipelineScheduleEvent;-><init>()V

    const/4 v1, 0x3

    .line 1338
    iput v1, v0, Lcom/taobao/android/dinamicx/widget/event/DXPipelineScheduleEvent;->stage:I

    .line 1339
    iput-object p0, v0, Lcom/taobao/android/dinamicx/widget/event/DXPipelineScheduleEvent;->sender:Ljava/lang/Object;

    .line 1340
    invoke-virtual {v2, v0}, Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;->postEvent(Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public sendBroadcastEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1811
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getReferenceNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1814
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    .line 1818
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildrenCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1819
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 1820
    invoke-virtual {v1, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->sendBroadcastEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setAccessibility(I)V
    .locals 0

    .line 2325
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->accessibility:I

    return-void
.end method

.method setAccessibility(Landroid/view/View;)V
    .locals 2

    .line 1000
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    .line 1001
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->accessibility:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->accessibilityText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1006
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1009
    :cond_1
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->accessibility:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1010
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1011
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x4

    .line 1013
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_1

    .line 1015
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string v0, ""

    .line 1020
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public setAccessibilityText(Ljava/lang/String;)V
    .locals 0

    .line 2317
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->accessibilityText:Ljava/lang/String;

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 2263
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->alpha:F

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 0

    .line 2593
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->animation:Ljava/lang/String;

    return-void
.end method

.method public setAutoId(I)V
    .locals 0

    .line 544
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->autoId:I

    return-void
.end method

.method public setBackGroundColor(I)V
    .locals 1

    .line 2304
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backGroundColor:I

    if-eq p1, v0, :cond_0

    .line 2305
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backGroundColor:I

    const/4 p1, 0x1

    .line 2306
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    :cond_0
    return-void
.end method

.method public setBackground(Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 891
    iget-boolean v2, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    if-nez v2, :cond_0

    return-void

    .line 896
    :cond_0
    iget v2, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backGroundColor:I

    const/4 v3, 0x1

    const-string v4, "backgroundColor"

    invoke-virtual {v0, v4, v3, v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->tryFetchDarkModeColor(Ljava/lang/String;II)I

    move-result v2

    .line 897
    iget v4, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderColor:I

    const/4 v5, 0x2

    const-string v6, "borderColor"

    invoke-virtual {v0, v6, v5, v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->tryFetchDarkModeColor(Ljava/lang/String;II)I

    move-result v4

    .line 899
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 906
    iget v7, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderType:I

    const/4 v8, 0x0

    if-ne v7, v3, :cond_3

    .line 907
    iget v7, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dashWidth:I

    const/4 v9, -0x1

    if-gt v7, v9, :cond_1

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 908
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static {v7, v10}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->ap2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dashWidth:I

    .line 910
    :cond_1
    iget v7, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dashGap:I

    if-gt v7, v9, :cond_2

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 911
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v7, v9}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->ap2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dashGap:I

    .line 914
    :cond_2
    iget v7, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dashWidth:I

    .line 915
    iget v9, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dashGap:I

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/16 v15, 0x8

    if-eqz v6, :cond_7

    .line 919
    instance-of v10, v6, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v10, :cond_7

    .line 920
    nop

    nop

    .line 921
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 922
    iget v1, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadius:I

    if-lez v1, :cond_4

    int-to-float v1, v1

    .line 923
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_1

    .line 925
    :cond_4
    new-array v1, v15, [F

    iget v2, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftTop:I

    int-to-float v10, v2

    aput v10, v1, v8

    int-to-float v2, v2

    aput v2, v1, v3

    iget v2, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightTop:I

    int-to-float v3, v2

    aput v3, v1, v5

    int-to-float v2, v2

    aput v2, v1, v14

    iget v2, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightBottom:I

    int-to-float v3, v2

    aput v3, v1, v13

    int-to-float v2, v2

    aput v2, v1, v12

    iget v2, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftBottom:I

    int-to-float v3, v2

    aput v3, v1, v11

    int-to-float v2, v2

    const/4 v3, 0x7

    aput v2, v1, v3

    .line 927
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 930
    :goto_1
    iget v1, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderWidth:I

    if-lez v1, :cond_5

    if-eqz v4, :cond_5

    int-to-float v2, v7

    int-to-float v3, v9

    .line 931
    invoke-virtual {v6, v1, v4, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    goto :goto_2

    .line 932
    :cond_5
    iget v1, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderWidth:I

    if-lez v1, :cond_6

    if-nez v4, :cond_6

    const/4 v1, 0x0

    .line 933
    invoke-virtual {v6, v8, v8, v1, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 936
    :cond_6
    :goto_2
    iget-object v1, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backgroundGradient:Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;

    if-eqz v1, :cond_f

    .line 938
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;->getGradientType()I

    move-result v1

    if-nez v1, :cond_f

    .line 939
    iget-object v1, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backgroundGradient:Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;

    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;->getGradientType()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 940
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_f

    .line 941
    iget-object v1, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backgroundGradient:Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;

    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;->getLinearGradientDirection()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 942
    iget-object v1, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backgroundGradient:Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;

    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;->getLinearGradientColors()[I

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    goto/16 :goto_6

    .line 947
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->hasCornerRadius()Z

    move-result v6

    if-nez v6, :cond_9

    if-nez v4, :cond_9

    iget v6, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderWidth:I

    if-gtz v6, :cond_9

    iget-object v6, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backgroundGradient:Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;

    if-eqz v6, :cond_8

    goto :goto_3

    .line 989
    :cond_8
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_6

    .line 950
    :cond_9
    :goto_3
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 952
    iget v10, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadius:I

    if-lez v10, :cond_a

    int-to-float v3, v10

    .line 953
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_4

    .line 955
    :cond_a
    new-array v10, v15, [F

    iget v15, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftTop:I

    int-to-float v11, v15

    aput v11, v10, v8

    int-to-float v11, v15

    aput v11, v10, v3

    iget v3, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightTop:I

    int-to-float v11, v3

    aput v11, v10, v5

    int-to-float v3, v3

    aput v3, v10, v14

    iget v3, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightBottom:I

    int-to-float v5, v3

    aput v5, v10, v13

    int-to-float v3, v3

    aput v3, v10, v12

    iget v3, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftBottom:I

    int-to-float v5, v3

    const/4 v11, 0x6

    aput v5, v10, v11

    int-to-float v3, v3

    const/4 v5, 0x7

    aput v3, v10, v5

    .line 957
    invoke-virtual {v6, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 960
    :goto_4
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 961
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 963
    iget v2, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderWidth:I

    if-lez v2, :cond_b

    if-eqz v4, :cond_b

    int-to-float v3, v7

    int-to-float v5, v9

    .line 964
    invoke-virtual {v6, v2, v4, v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    goto :goto_5

    .line 965
    :cond_b
    iget v2, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderWidth:I

    if-lez v2, :cond_c

    if-nez v4, :cond_c

    const/4 v2, 0x0

    .line 966
    invoke-virtual {v6, v8, v8, v2, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 969
    :cond_c
    :goto_5
    iget-object v2, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backgroundGradient:Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;

    if-eqz v2, :cond_d

    .line 971
    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;->getGradientType()I

    move-result v2

    if-nez v2, :cond_d

    .line 972
    iget-object v2, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backgroundGradient:Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;->getGradientType()I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 973
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_d

    .line 974
    iget-object v2, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backgroundGradient:Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;->getLinearGradientDirection()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 975
    iget-object v2, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backgroundGradient:Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;->getLinearGradientColors()[I

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 980
    :cond_d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_e

    .line 982
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 985
    :cond_e
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    :goto_6
    return-void
.end method

.method public setBackgroundGradient(Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;)V
    .locals 0

    .line 2726
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backgroundGradient:Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;

    return-void
.end method

.method public setBindingXExecutingMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;",
            ">;)V"
        }
    .end annotation

    .line 2787
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindingXExecutingMap:Ljava/util/Map;

    return-void
.end method

.method public setBindingXSpecMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;",
            ">;)V"
        }
    .end annotation

    .line 2665
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindingXSpecMap:Ljava/util/Map;

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 2282
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderColor:I

    if-eq p1, v0, :cond_0

    .line 2283
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderColor:I

    const/4 p1, 0x1

    .line 2284
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    :cond_0
    return-void
.end method

.method public setBorderType(I)V
    .locals 0

    .line 2293
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderType:I

    if-eq p1, p1, :cond_0

    .line 2294
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderType:I

    const/4 p1, 0x1

    .line 2295
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    :cond_0
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 2271
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderWidth:I

    if-eq v0, p1, :cond_0

    .line 2272
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderWidth:I

    const/4 p1, 0x1

    .line 2273
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    :cond_0
    return-void
.end method

.method public setBottom(I)V
    .locals 0

    .line 2255
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bottom:I

    return-void
.end method

.method public setChildGravity(I)V
    .locals 0

    .line 2483
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childGravity:I

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1

    .line 2346
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadius:I

    if-eq v0, p1, :cond_0

    .line 2347
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadius:I

    const/4 p1, 0x1

    .line 2348
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    :cond_0
    return-void
.end method

.method public setCornerRadius(IIII)V
    .locals 0

    .line 2353
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftTop:I

    .line 2354
    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightTop:I

    .line 2355
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftBottom:I

    .line 2356
    iput p4, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightBottom:I

    const/4 p1, 0x1

    .line 2357
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    return-void
.end method

.method public setCornerRadiusLeftBottom(I)V
    .locals 0

    .line 2553
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftBottom:I

    return-void
.end method

.method public setCornerRadiusLeftTop(I)V
    .locals 0

    .line 2545
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftTop:I

    return-void
.end method

.method public setCornerRadiusRightBottom(I)V
    .locals 0

    .line 2557
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightBottom:I

    return-void
.end method

.method public setCornerRadiusRightTop(I)V
    .locals 0

    .line 2549
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightTop:I

    return-void
.end method

.method public setDXRuntimeContext(Lcom/taobao/android/dinamicx/DXRuntimeContext;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dXRuntimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    return-void
.end method

.method public setDataParsersExprNode(Lcom/taobao/android/dinamicx/model/DXLongSparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/expression/DXExprNode;",
            ">;)V"
        }
    .end annotation

    .line 2382
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dataParsersExprNode:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    .line 2499
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->direction:I

    return-void
.end method

.method public setDisableDarkMode(Z)V
    .locals 0

    .line 2657
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->disableDarkMode:Z

    return-void
.end method

.method public setDoubleAttribute(JD)V
    .locals 3

    const-wide v0, 0x2516dc25a6220eL

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 1482
    iput-wide p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->weight:D

    goto :goto_0

    :cond_0
    const-wide v0, 0xf5bec358c6bL

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    double-to-float p1, p3

    .line 1484
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->alpha:F

    goto :goto_0

    .line 1486
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetDoubleAttribute(JD)V

    :goto_0
    return-void
.end method

.method public setEnabled(I)V
    .locals 0

    .line 2507
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->enabled:I

    return-void
.end method

.method public setEnumMap(Lcom/taobao/android/dinamicx/model/DXLongSparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 2386
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->enumMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-void
.end method

.method public setEventHandlersExprNode(Lcom/taobao/android/dinamicx/model/DXLongSparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/expression/DXExprNode;",
            ">;)V"
        }
    .end annotation

    .line 2378
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->eventHandlersExprNode:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-void
.end method

.method public setFlatten(Z)V
    .locals 0

    .line 2531
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->isFlatten:Z

    return-void
.end method

.method protected setForceDark(Landroid/view/View;)V
    .locals 1

    .line 2879
    invoke-static {}, Lcom/taobao/android/dinamicx/DXDarkModeCenter;->isSupportDarkMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/taobao/android/dinamicx/DXDarkModeCenter;->isDark()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2881
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->disableDarkMode:Z

    if-eqz v0, :cond_0

    .line 2882
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXDarkModeCenter;->disableForceDark(Landroid/view/View;)V

    return-void

    .line 2887
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->extraHandleDark()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->hasHandleDark:Z

    if-eqz v0, :cond_2

    .line 2888
    :cond_1
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXDarkModeCenter;->disableForceDark(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1

    .line 376
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->left:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->right:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->top:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bottom:I

    if-eq v0, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 379
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->left:I

    .line 380
    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->top:I

    .line 381
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->right:I

    .line 382
    iput p4, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bottom:I

    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final setIntAttribute(JI)V
    .locals 5

    const-wide v0, 0x123cef8d32c5L

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 1376
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    goto/16 :goto_0

    :cond_0
    const-wide v0, 0x2134aae97d133fL

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 1378
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    goto/16 :goto_0

    :cond_1
    const-wide v0, -0xcb88468e6490dedL

    cmp-long v2, v0, p1

    if-nez v2, :cond_2

    .line 1380
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    goto/16 :goto_0

    :cond_2
    const-wide v0, -0x40ddcefe19dee979L    # -1.387896364254857E-4

    cmp-long v2, v0, p1

    if-nez v2, :cond_3

    .line 1382
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    goto/16 :goto_0

    :cond_3
    const-wide v0, -0x24a8c882d4d47446L    # -1.0299582288254166E132

    cmp-long v2, v0, p1

    if-nez v2, :cond_4

    .line 1384
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    goto/16 :goto_0

    :cond_4
    const-wide v0, 0x5a4a1cc0544463ffL    # 8.837989474732166E126

    cmp-long v2, v0, p1

    if-nez v2, :cond_5

    .line 1386
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    goto/16 :goto_0

    :cond_5
    const-wide v0, -0x5422b7cd07b2993L

    cmp-long v2, v0, p1

    if-nez v2, :cond_6

    .line 1388
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingLeft:I

    goto/16 :goto_0

    :cond_6
    const-wide v0, 0x2cd1cba4de1111e1L    # 8.53122034330043E-93

    cmp-long v2, v0, p1

    if-nez v2, :cond_7

    .line 1390
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingRight:I

    goto/16 :goto_0

    :cond_7
    const-wide v0, -0x2488623792742aecL

    cmp-long v2, v0, p1

    if-nez v2, :cond_8

    .line 1392
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingTop:I

    goto/16 :goto_0

    :cond_8
    const-wide v0, -0x41dc927e7dbaeda7L    # -2.2616886299190676E-9

    cmp-long v2, v0, p1

    if-nez v2, :cond_9

    .line 1394
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingBottom:I

    goto/16 :goto_0

    :cond_9
    const-wide v0, 0x43b83460932c0a8dL    # 1.7441251409145725E18

    const/16 v2, 0x8

    const/4 v3, 0x1

    cmp-long v4, v0, p1

    if-nez v4, :cond_a

    if-ltz p3, :cond_a

    if-gt p3, v2, :cond_a

    .line 1396
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutGravity:I

    .line 1397
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->propertyInitFlag:I

    or-int/2addr p1, v3

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->propertyInitFlag:I

    goto/16 :goto_0

    :cond_a
    const-wide v0, -0x2ca8ab17b09add0aL    # -3.0417568455840657E93

    cmp-long v4, v0, p1

    if-nez v4, :cond_b

    if-ltz p3, :cond_b

    if-gt p3, v2, :cond_b

    .line 1399
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->childGravity:I

    goto/16 :goto_0

    :cond_b
    const-wide v0, 0x68251a045adab5caL    # 4.813746451086927E193

    cmp-long v2, v0, p1

    if-nez v2, :cond_d

    if-eqz p3, :cond_c

    if-ne p3, v3, :cond_d

    .line 1401
    :cond_c
    invoke-virtual {p0, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setDirection(I)V

    goto/16 :goto_0

    :cond_d
    const-wide v0, 0x5086155c409bd152L    # 8.182680092428053E79

    cmp-long v2, v0, p1

    if-nez v2, :cond_f

    if-eqz p3, :cond_e

    if-eq p3, v3, :cond_e

    const/4 v0, 0x2

    if-ne p3, v0, :cond_f

    .line 1403
    :cond_e
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->visibility:I

    goto/16 :goto_0

    :cond_f
    const-wide v0, 0x579cb14ee9f16dfdL    # 1.1040492304388282E114

    cmp-long v2, v0, p1

    if-nez v2, :cond_10

    .line 1405
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadius:I

    .line 1406
    iput-boolean v3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    goto/16 :goto_0

    :cond_10
    const-wide v0, -0x61c12ae3c39c233eL    # -5.354150382126096E-163

    cmp-long v2, v0, p1

    if-nez v2, :cond_11

    .line 1408
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftTop:I

    .line 1409
    iput-boolean v3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    goto/16 :goto_0

    :cond_11
    const-wide v0, 0x787413396f0ff336L

    cmp-long v2, v0, p1

    if-nez v2, :cond_12

    .line 1411
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightTop:I

    .line 1412
    iput-boolean v3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    goto/16 :goto_0

    :cond_12
    const-wide v0, -0x33e14839358d90f9L    # -4.820480984549792E58

    cmp-long v2, v0, p1

    if-nez v2, :cond_13

    .line 1414
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusLeftBottom:I

    .line 1415
    iput-boolean v3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    goto/16 :goto_0

    :cond_13
    const-wide v0, 0x17786d52ac6fe47bL

    cmp-long v2, v0, p1

    if-nez v2, :cond_14

    .line 1417
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->cornerRadiusRightBottom:I

    .line 1418
    iput-boolean v3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    goto/16 :goto_0

    :cond_14
    const-wide v0, -0x6f4c88169e85c877L    # -3.210211635119481E-228

    cmp-long v2, v0, p1

    if-nez v2, :cond_15

    .line 1420
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderWidth:I

    .line 1421
    iput-boolean v3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    goto/16 :goto_0

    :cond_15
    const-wide v0, -0x6f4d2a7dda7c0378L

    cmp-long v2, v0, p1

    if-nez v2, :cond_16

    .line 1423
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderColor:I

    .line 1424
    iput-boolean v3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    goto/16 :goto_0

    :cond_16
    const-wide v0, 0x1997bf62eea68f2aL    # 2.183144417878833E-185

    cmp-long v2, v0, p1

    if-nez v2, :cond_17

    .line 1426
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->borderType:I

    .line 1427
    iput-boolean v3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    goto/16 :goto_0

    :cond_17
    const-wide v0, 0x32c0bd01c984520dL    # 3.178794850046634E-64

    cmp-long v2, v0, p1

    if-nez v2, :cond_18

    .line 1429
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dashWidth:I

    goto/16 :goto_0

    :cond_18
    const-wide v0, 0x4aba40fd33ce1923L    # 9.822736532820376E51

    cmp-long v2, v0, p1

    if-nez v2, :cond_19

    .line 1431
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dashGap:I

    goto :goto_0

    :cond_19
    const-wide v0, -0x5d3446372db82e8bL

    cmp-long v2, v0, p1

    if-nez v2, :cond_1a

    .line 1433
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->accessibility:I

    goto :goto_0

    :cond_1a
    const-wide v0, -0x27228264c32ab7d2L    # -1.1898785521381479E120

    cmp-long v2, v0, p1

    if-nez v2, :cond_1b

    .line 1435
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backGroundColor:I

    .line 1436
    iput-boolean v3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    goto :goto_0

    :cond_1b
    const-wide v0, 0x42ae0afbeefa07d2L    # 1.651626262451591E13

    cmp-long v2, v0, p1

    if-nez v2, :cond_1c

    .line 1438
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->enabled:I

    goto :goto_0

    :cond_1c
    const-wide v0, 0x1c7866ccea56e8a6L

    cmp-long v2, v0, p1

    if-nez v2, :cond_1d

    .line 1440
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->minHeight:I

    goto :goto_0

    :cond_1d
    const-wide v0, 0x41251532fca5f94cL    # 690841.4934537797

    cmp-long v2, v0, p1

    if-nez v2, :cond_1e

    .line 1442
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->minWidth:I

    goto :goto_0

    :cond_1e
    const-wide v0, -0x6fa27900209c1caaL    # -7.607600053805887E-230

    const/4 v2, 0x0

    cmp-long v4, p1, v0

    if-nez v4, :cond_20

    if-ne p3, v3, :cond_1f

    const/4 v2, 0x1

    .line 1444
    :cond_1f
    iput-boolean v2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->clipChildren:Z

    goto :goto_0

    :cond_20
    const-wide v0, -0x5b4fa90561adc416L    # -5.755030433118442E-132

    cmp-long v4, p1, v0

    if-nez v4, :cond_22

    if-eqz p3, :cond_21

    const/4 v2, 0x1

    .line 1446
    :cond_21
    iput-boolean v2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->disableDarkMode:Z

    goto :goto_0

    .line 1448
    :cond_22
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetIntAttribute(JI)V

    :goto_0
    return-void
.end method

.method public setLastAutoId(I)V
    .locals 0

    .line 2703
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->lastAutoId:I

    return-void
.end method

.method public setLayoutGravity(I)V
    .locals 0

    .line 2474
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutGravity:I

    .line 2475
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->propertyInitFlag:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->propertyInitFlag:I

    return-void
.end method

.method public setLayoutHeight(I)V
    .locals 0

    .line 2418
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    return-void
.end method

.method public setLayoutWidth(I)V
    .locals 0

    .line 2410
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    return-void
.end method

.method public setLeft(I)V
    .locals 0

    .line 2243
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->left:I

    return-void
.end method

.method public setListAttribute(JLcom/alibaba/fastjson/JSONArray;)V
    .locals 0

    .line 1507
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetListAttribute(JLcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method public setLongAttribute(JJ)V
    .locals 0

    .line 1503
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetLongAttribute(JJ)V

    return-void
.end method

.method public setMapAttribute(JLcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 1511
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetMapAttribute(JLcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public setMarginBottom(I)V
    .locals 0

    .line 2430
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    return-void
.end method

.method public setMarginLeft(I)V
    .locals 0

    .line 2565
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    return-void
.end method

.method public setMarginRight(I)V
    .locals 0

    .line 2581
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    return-void
.end method

.method public setMarginTop(I)V
    .locals 0

    .line 2573
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    return-void
.end method

.method public final setMeasuredDimension(II)V
    .locals 0

    .line 735
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->measuredWidth:I

    .line 736
    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->measuredHeight:I

    return-void
.end method

.method public setMinHeight(I)V
    .locals 0

    .line 2515
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->minHeight:I

    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    .line 2523
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->minWidth:I

    return-void
.end method

.method public final setNeedLayout()V
    .locals 3

    .line 1284
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    .line 1285
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    and-int/lit8 v0, v0, -0x29

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    .line 1287
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->parentWidget:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v0, :cond_0

    .line 1289
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setNeedLayout()V

    goto :goto_0

    .line 1291
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1295
    :cond_1
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxRenderPipeline()Lcom/taobao/android/dinamicx/DXRenderPipeline;

    move-result-object v1

    .line 1296
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxControlEventCenter()Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;

    move-result-object v2

    if-eqz v1, :cond_4

    if-nez v2, :cond_2

    goto :goto_0

    .line 1300
    :cond_2
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->getPipelineCacheManager()Lcom/taobao/android/dinamicx/DXPipelineCacheManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1302
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getCacheIdentify()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->removeCache(Ljava/lang/String;)V

    .line 1304
    :cond_3
    new-instance v0, Lcom/taobao/android/dinamicx/widget/event/DXPipelineScheduleEvent;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/widget/event/DXPipelineScheduleEvent;-><init>()V

    const/4 v1, 0x3

    .line 1305
    iput v1, v0, Lcom/taobao/android/dinamicx/widget/event/DXPipelineScheduleEvent;->stage:I

    .line 1306
    iput-object p0, v0, Lcom/taobao/android/dinamicx/widget/event/DXPipelineScheduleEvent;->sender:Ljava/lang/Object;

    .line 1307
    invoke-virtual {v2, v0}, Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;->postEventDelay(Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final setNeedParse()V
    .locals 3

    .line 1238
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    .line 1239
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    .line 1240
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->parentWidget:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v0, :cond_0

    .line 1241
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setNeedParse()V

    goto :goto_0

    .line 1243
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1248
    :cond_1
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxRenderPipeline()Lcom/taobao/android/dinamicx/DXRenderPipeline;

    move-result-object v1

    .line 1249
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxControlEventCenter()Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;

    move-result-object v2

    if-eqz v1, :cond_4

    if-nez v2, :cond_2

    goto :goto_0

    .line 1253
    :cond_2
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->getPipelineCacheManager()Lcom/taobao/android/dinamicx/DXPipelineCacheManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1255
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getCacheIdentify()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->removeCache(Ljava/lang/String;)V

    .line 1257
    :cond_3
    new-instance v0, Lcom/taobao/android/dinamicx/widget/event/DXPipelineScheduleEvent;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/widget/event/DXPipelineScheduleEvent;-><init>()V

    const/4 v1, 0x2

    .line 1258
    iput v1, v0, Lcom/taobao/android/dinamicx/widget/event/DXPipelineScheduleEvent;->stage:I

    .line 1259
    iput-object p0, v0, Lcom/taobao/android/dinamicx/widget/event/DXPipelineScheduleEvent;->sender:Ljava/lang/Object;

    .line 1260
    invoke-virtual {v2, v0}, Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;->postEventDelay(Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final setNeedRender(Landroid/content/Context;)V
    .locals 1

    .line 1350
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    .line 1351
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->renderView(Landroid/content/Context;)V

    return-void
.end method

.method public setNeedSetBackground(Z)V
    .locals 0

    .line 2540
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    return-void
.end method

.method public final setObjAttribute(JLjava/lang/Object;)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-wide v0, 0x2fb28091d687f160L    # 6.241731891957065E-79

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 1464
    check-cast p3, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;

    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->backgroundGradient:Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;

    const/4 p1, 0x1

    .line 1465
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needSetBackground:Z

    goto :goto_0

    :cond_1
    const-wide v0, -0x5823cca718c18acL

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    .line 1467
    check-cast p3, Ljava/util/HashMap;

    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->darkModeColorMap:Ljava/util/HashMap;

    goto :goto_0

    .line 1469
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetObjAttribute(JLjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 0

    .line 2454
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingBottom:I

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0

    .line 2438
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingLeft:I

    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0

    .line 2446
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingRight:I

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0

    .line 2462
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->paddingTop:I

    return-void
.end method

.method public setParentWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
    .locals 0

    .line 2394
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->parentWidget:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-void
.end method

.method public setRealViewLayoutParam(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->parentWidget:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v0, :cond_4

    instance-of v0, v0, Lcom/taobao/android/dinamicx/widget/DXLayout;

    if-nez v0, :cond_1

    goto :goto_1

    .line 1078
    :cond_1
    sget-object v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->attributeThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->realLayoutAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    .line 1079
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->realLayoutAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    if-nez v0, :cond_2

    .line 1080
    new-instance v0, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->realLayoutAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    .line 1081
    sget-object v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->attributeThreadLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->realLayoutAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1083
    :cond_2
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->realLayoutAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->widthAttr:I

    .line 1084
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->realLayoutAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->heightAttr:I

    .line 1085
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->parentWidget:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    check-cast v0, Lcom/taobao/android/dinamicx/widget/DXLayout;

    .line 1086
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1088
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->realLayoutAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/widget/DXLayout;->generateLayoutParams(Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 1090
    :cond_3
    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->realLayoutAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    invoke-virtual {v0, v2, v1}, Lcom/taobao/android/dinamicx/widget/DXLayout;->generateLayoutParams(Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1092
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 1069
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1071
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 1073
    :cond_5
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1074
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1076
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    return-void
.end method

.method setRealViewVisibility(Landroid/view/View;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 1049
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eq p2, v0, :cond_4

    .line 1050
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public setReferenceNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2747
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->referenceNode:Ljava/lang/ref/WeakReference;

    return-void

    .line 2751
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->referenceNode:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setRight(I)V
    .locals 0

    .line 2247
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->right:I

    return-void
.end method

.method public setRotationX(F)V
    .locals 0

    .line 2633
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->rotationX:F

    return-void
.end method

.method public setRotationY(F)V
    .locals 0

    .line 2641
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->rotationY:F

    return-void
.end method

.method public setRotationZ(F)V
    .locals 0

    .line 2649
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->rotationZ:F

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    .line 2617
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->scaleX:F

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    .line 2625
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->scaleY:F

    return-void
.end method

.method public setSourceWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2718
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->sourceWidgetWR:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setStatFlag(I)V
    .locals 1

    .line 2675
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    return-void
.end method

.method public setStringAttribute(JLjava/lang/String;)V
    .locals 3

    const-wide v0, 0x2495e855ab73f2L

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 1492
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->userId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-wide v0, 0x57749838175c891eL    # 1.981124972360513E113

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 1494
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->accessibilityText:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-wide v0, -0xd6574b66695737L

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    .line 1496
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->animation:Ljava/lang/String;

    goto :goto_0

    .line 1498
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetStringAttribute(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setTop(I)V
    .locals 0

    .line 2251
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->top:I

    return-void
.end method

.method public setTranslateX(F)V
    .locals 0

    .line 2601
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->translateX:F

    return-void
.end method

.method public setTranslateY(F)V
    .locals 0

    .line 2609
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->translateY:F

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 2402
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->userId:Ljava/lang/String;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 2466
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->visibility:I

    return-void
.end method

.method public setWRView(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 561
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->weakView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setWeight(D)V
    .locals 0

    .line 2426
    iput-wide p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->weight:D

    return-void
.end method

.method public final shallowClone(Lcom/taobao/android/dinamicx/DXRuntimeContext;Z)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcom/taobao/android/dinamicx/DXRuntimeContext;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1105
    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 1111
    invoke-virtual {p1, v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->cloneWithWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p1

    iput-object p1, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->dXRuntimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    .line 1113
    :cond_1
    invoke-virtual {v1, p0, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    return-object v1
.end method

.method protected tryFetchDarkModeColor(Ljava/lang/String;II)I
    .locals 2
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 2843
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->needHandleDark()Z

    move-result v0

    if-nez v0, :cond_0

    return p3

    .line 2848
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->darkModeColorMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2849
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 2852
    iput-boolean v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->hasHandleDark:Z

    .line 2853
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 2858
    :cond_1
    invoke-static {}, Lcom/taobao/android/dinamicx/DXDarkModeCenter;->hasSwitchInterface()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2859
    iput-boolean v1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->hasHandleDark:Z

    .line 2860
    invoke-static {p2, p3}, Lcom/taobao/android/dinamicx/DXDarkModeCenter;->switchDarkModeColor(II)I

    move-result p1

    return p1

    :cond_2
    return p3
.end method

.method public unsetStatFlag(I)V
    .locals 1

    .line 2685
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->privateFlags:I

    return-void
.end method
