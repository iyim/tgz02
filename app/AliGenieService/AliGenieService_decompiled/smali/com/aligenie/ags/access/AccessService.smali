.class public Lcom/aligenie/ags/access/AccessService;
.super Landroid/accessibilityservice/AccessibilityService;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aligenie/ags/access/AccessService$f;,
        Lcom/aligenie/ags/access/AccessService$g;
    }
.end annotation


# instance fields
.field public final b:Landroid/os/Handler;

.field public c:Lorg/json/JSONObject;

.field public d:Lorg/json/JSONArray;

.field public e:Lc/a/a/a/a/a/a/c;

.field public f:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Lcom/aligenie/ags/access/AccessService$g;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lb/h/k/a0/b;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lc/b/a/a/c/a;

.field public i:Lc/b/a/a/c/f;

.field public j:Landroid/content/Context;

.field public k:Lb/h/k/a0/b;

.field public final l:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/aligenie/ags/access/AccessService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/aligenie/ags/access/AccessService;->c:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/aligenie/ags/access/AccessService;->d:Lorg/json/JSONArray;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/aligenie/ags/access/AccessService;->f:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/aligenie/ags/access/AccessService;->g:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aligenie/ags/access/AccessService;->h:Lc/b/a/a/c/a;

    iput-object v0, p0, Lcom/aligenie/ags/access/AccessService;->i:Lc/b/a/a/c/f;

    new-instance v0, Lcom/aligenie/ags/access/AccessService$a;

    invoke-direct {v0, p0}, Lcom/aligenie/ags/access/AccessService$a;-><init>(Lcom/aligenie/ags/access/AccessService;)V

    iput-object v0, p0, Lcom/aligenie/ags/access/AccessService;->l:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    new-instance v0, Lcom/aligenie/ags/access/AccessService$e;

    invoke-direct {v0, p0}, Lcom/aligenie/ags/access/AccessService$e;-><init>(Lcom/aligenie/ags/access/AccessService;)V

    iput-object v0, p0, Lcom/aligenie/ags/access/AccessService;->b:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/aligenie/ags/access/AccessService;)Lorg/json/JSONObject;
    .locals 0

    invoke-virtual {p0}, Lcom/aligenie/ags/access/AccessService;->b()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/aligenie/ags/access/AccessService;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/aligenie/ags/access/AccessService;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/aligenie/ags/access/AccessService;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService;->j:Landroid/content/Context;

    invoke-static {v0}, Lc/a/a/a/a/a/b/f;->b(Landroid/content/Context;)Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getWindows()Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lcom/aligenie/ags/access/AccessService;->j:Landroid/content/Context;

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget v2, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, p0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    const-string v4, "Access"

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    const-string v7, "isBigGenieBallExit window :"

    invoke-static {v7}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isBigGenieBallExit rect :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v1

    const/4 v7, 0x3

    if-ne v1, v7, :cond_0

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v7

    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v6

    mul-int/2addr v7, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isBigGenieBallExit windowSize :"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    div-int/lit8 v1, v2, 0x3

    if-le v7, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BigGenieBall not exit, windowSize is bigger than screenSize/3: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v3

    goto :goto_0

    :cond_1
    move p0, v5

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    move v3, v5

    .line 3
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAppTouchable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isGgenieUiShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isBigGenieBallExit:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static synthetic c(Lcom/aligenie/ags/access/AccessService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aligenie/ags/access/AccessService;->c()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getWindows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    const-string v3, "window :"

    invoke-static {v3}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Access"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rect :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lc/b/a/a/d/b;->a(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-static {v1}, Lc/b/a/a/d/a;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Lb/h/k/a0/b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, v1, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh()Z

    .line 15
    :cond_2
    invoke-virtual {p0, v1}, Lcom/aligenie/ags/access/AccessService;->c(Lb/h/k/a0/b;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(Lb/h/k/a0/b;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1
    iget-object v1, p1, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 2
    new-instance v2, Lb/h/k/a0/b;

    invoke-direct {v2, v1}, Lb/h/k/a0/b;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3
    invoke-virtual {p0, v2, v0}, Lcom/aligenie/ags/access/AccessService;->a(Lb/h/k/a0/b;Ljava/util/ArrayList;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/aligenie/ags/access/AccessService;->a(Lb/h/k/a0/b;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/a/d/c;

    iget-object v1, p0, Lcom/aligenie/ags/access/AccessService;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lc/b/a/a/d/c;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget v1, Lc/b/a/a/d/e;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "jsonArray add:"

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lc/b/a/a/d/c;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Access"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/aligenie/ags/access/AccessService;->g:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v3, v0, Lc/b/a/a/d/c;->a:Lb/h/k/a0/b;

    .line 5
    invoke-virtual {v3}, Lb/h/k/a0/b;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v0, v0, Lc/b/a/a/d/c;->a:Lb/h/k/a0/b;

    .line 7
    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lb/h/k/a0/b;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/h/k/a0/b;",
            "Ljava/util/ArrayList<",
            "Lc/b/a/a/d/c;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lb/h/k/a0/b;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Lc/b/a/a/d/c;

    iget-object v2, p0, Lcom/aligenie/ags/access/AccessService;->j:Landroid/content/Context;

    invoke-direct {v0, p1, v2}, Lc/b/a/a/d/c;-><init>(Lb/h/k/a0/b;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object v2, v0, Lc/b/a/a/d/c;->f:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    if-lt v3, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {p1}, Lb/h/k/a0/b;->y()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Lb/h/k/a0/b;->c()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Lb/h/k/a0/b;->b(I)Lb/h/k/a0/b;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2, p2}, Lcom/aligenie/ags/access/AccessService;->a(Lb/h/k/a0/b;Ljava/util/ArrayList;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final a(Lb/h/k/a0/b;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/h/k/a0/b;",
            "Ljava/util/ArrayList<",
            "Lc/b/a/a/d/c;",
            ">;",
            "Ljava/util/HashSet<",
            "Lb/h/k/a0/b;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const-string v5, "Access"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lb/h/k/a0/b;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "Cycle: %d"

    .line 16
    invoke-static {v5, v4, v0, v1}, Lc/b/a/a/d/f;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 17
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 18
    iget-object v8, v0, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v8, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 19
    iget v8, v3, Landroid/graphics/Rect;->right:I

    iget v9, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v3

    mul-int/2addr v9, v8

    int-to-long v8, v9

    invoke-virtual/range {p1 .. p1}, Lb/h/k/a0/b;->y()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v7

    const-wide/16 v12, 0x0

    const/16 v14, 0x270f

    :goto_0
    if-ltz v3, :cond_8

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v4, v15

    check-cast v4, Lc/b/a/a/d/c;

    .line 20
    iget-boolean v6, v4, Lc/b/a/a/d/c;->g:Z

    if-eqz v6, :cond_1

    .line 21
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v7, :cond_1

    goto/16 :goto_3

    .line 22
    :cond_1
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 23
    iget-object v7, v0, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v7, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 24
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget-object v10, v4, Lc/b/a/a/d/c;->f:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    if-lt v7, v11, :cond_2

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v11, v10, Landroid/graphics/Rect;->top:I

    if-lt v7, v11, :cond_2

    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v11, v10, Landroid/graphics/Rect;->right:I

    if-gt v7, v11, :cond_2

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    if-gt v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_5

    .line 25
    iget-wide v6, v4, Lc/b/a/a/d/c;->h:J

    cmp-long v10, v8, v6

    if-nez v10, :cond_3

    .line 26
    invoke-virtual {v4, v0}, Lc/b/a/a/d/c;->a(Lb/h/k/a0/b;)V

    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v4, v12, v10

    if-nez v4, :cond_4

    :goto_2
    move v14, v3

    move-wide v12, v6

    goto :goto_3

    :cond_4
    cmp-long v4, v6, v12

    if-gez v4, :cond_7

    goto :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lb/h/k/a0/b;->k()Lb/h/k/a0/b;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual/range {p1 .. p1}, Lb/h/k/a0/b;->k()Lb/h/k/a0/b;

    move-result-object v6

    .line 27
    iget-object v7, v4, Lc/b/a/a/d/c;->a:Lb/h/k/a0/b;

    .line 28
    invoke-virtual {v7}, Lb/h/k/a0/b;->k()Lb/h/k/a0/b;

    move-result-object v7

    invoke-virtual {v6, v7}, Lb/h/k/a0/b;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual/range {p1 .. p1}, Lb/h/k/a0/b;->k()Lb/h/k/a0/b;

    move-result-object v6

    invoke-virtual {v6}, Lb/h/k/a0/b;->f()Lb/h/k/a0/b$c;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 29
    iget-wide v6, v4, Lc/b/a/a/d/c;->h:J

    cmp-long v6, v6, v12

    if-lez v6, :cond_6

    const-wide/16 v6, 0x0

    cmp-long v10, v12, v6

    if-nez v10, :cond_7

    :cond_6
    iget-wide v6, v4, Lc/b/a/a/d/c;->h:J

    goto :goto_2

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    :goto_4
    const-wide/16 v6, 0x0

    cmp-long v4, v12, v6

    if-eqz v4, :cond_9

    if-nez v3, :cond_9

    const/16 v3, 0x270f

    if-eq v14, v3, :cond_9

    if-ltz v14, :cond_9

    .line 30
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/a/a/d/c;

    invoke-virtual {v3, v0}, Lc/b/a/a/d/c;->a(Lb/h/k/a0/b;)V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lb/h/k/a0/b;->c()I

    move-result v3

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_b

    invoke-virtual {v0, v4}, Lb/h/k/a0/b;->b(I)Lb/h/k/a0/b;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_a

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    const-string v8, "%sCouldn\'t get child %d"

    const/4 v10, 0x2

    .line 31
    invoke-static {v5, v10, v8, v6}, Lc/b/a/a/d/f;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v8, p0

    goto :goto_6

    :cond_a
    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object/from16 v8, p0

    .line 32
    invoke-virtual {v8, v6, v1, v2}, Lcom/aligenie/ags/access/AccessService;->a(Lb/h/k/a0/b;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    move-object/from16 v8, p0

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    const-string v0, "clickStyle"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "selectList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SCREEN_CLICK_SIMULATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/aligenie/ags/access/AccessService;->j:Landroid/content/Context;

    const-string v0, "-1"

    invoke-static {p1, v0}, Lc/a/a/a/a/a/b/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aligenie/ags/access/AccessService;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/h/k/a0/b;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    iget-object p1, p1, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 9
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService;->j:Landroid/content/Context;

    invoke-static {v0}, Lc/a/a/a/a/a/b/f;->b(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "y:"

    const-string v3, "Access"

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clickScreen:  isUiShowing false x:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/aligenie/ags/access/AccessService$b;

    invoke-direct {v2, p0, v1, p1}, Lcom/aligenie/ags/access/AccessService$b;-><init>(Lcom/aligenie/ags/access/AccessService;II)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clickScreen:  isUiShowing true x:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "x"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "y"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "z"

    const/4 v1, 0x1

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/aligenie/ags/access/AccessService;->b:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/aligenie/ags/access/AccessService;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/h/k/a0/b;

    invoke-virtual {p0, p1}, Lcom/aligenie/ags/access/AccessService;->b(Lb/h/k/a0/b;)Lb/h/k/a0/b;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    iget-object v1, p1, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 11
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/aligenie/ags/access/AccessService$c;

    invoke-direct {v3, p0, v2, v1}, Lcom/aligenie/ags/access/AccessService$c;-><init>(Lcom/aligenie/ags/access/AccessService;II)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aligenie/ags/access/AccessService$d;

    invoke-direct {v1, p0, p1}, Lcom/aligenie/ags/access/AccessService$d;-><init>(Lcom/aligenie/ags/access/AccessService;Lb/h/k/a0/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final b(Lb/h/k/a0/b;)Lb/h/k/a0/b;
    .locals 2

    invoke-virtual {p1}, Lb/h/k/a0/b;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lb/h/k/a0/b;->c()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lb/h/k/a0/b;->b(I)Lb/h/k/a0/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lb/h/k/a0/b;->b(I)Lb/h/k/a0/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/aligenie/ags/access/AccessService;->b(Lb/h/k/a0/b;)Lb/h/k/a0/b;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 13

    const-string v0, "activity"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getWindows()Ljava/util/List;

    move-result-object v2

    const-string v3, "Access"

    const-string v4, "getCommonSelectContextJson begin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    const-string v6, "window :"

    invoke-static {v6}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rect :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v6

    const v7, 0x186a0

    if-lt v6, v7, :cond_1

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v6

    const v7, 0x1d4c0

    if-gt v6, v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Rect(0, 0 - 1280, 800)"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Rect(0, 0 - 1024, 600)"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    const-string v2, "window is focused"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/aligenie/ags/access/AccessService;->c:Lorg/json/JSONObject;

    const/4 v2, 0x0

    const/4 v5, 0x1

    :try_start_0
    iget-object v6, p0, Lcom/aligenie/ags/access/AccessService;->c:Lorg/json/JSONObject;

    const-string v7, "version"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/aligenie/ags/access/AccessService;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aligenie/ags/access/AccessService$g;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "class"

    const-string v9, "package"

    const-string v10, "label"

    if-eqz v6, :cond_3

    :try_start_1
    iget-object v0, v6, Lcom/aligenie/ags/access/AccessService$g;->c:Ljava/lang/String;

    invoke-virtual {v7, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v6, Lcom/aligenie/ags/access/AccessService$g;->b:Ljava/lang/String;

    invoke-virtual {v7, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v6, Lcom/aligenie/ags/access/AccessService$g;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/aligenie/ags/access/AccessService;->j:Landroid/content/Context;

    .line 4
    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    invoke-virtual {v6, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, ""

    if-eqz v6, :cond_4

    :try_start_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_4

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    move-object v6, v11

    .line 5
    :goto_1
    iget-object v12, p0, Lcom/aligenie/ags/access/AccessService;->j:Landroid/content/Context;

    .line 6
    invoke-virtual {v12, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    .line 7
    :cond_5
    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService;->j:Landroid/content/Context;

    invoke-static {v0, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService;->c:Lorg/json/JSONObject;

    const-string v6, "pageId"

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/aligenie/ags/access/AccessService;->d:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    invoke-static {v4}, Lc/b/a/a/d/b;->a(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Lc/b/a/a/d/a;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Lb/h/k/a0/b;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v4, v0, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh()Z

    .line 9
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, v0}, Lcom/aligenie/ags/access/AccessService;->a(Lb/h/k/a0/b;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v2

    const-string v2, "page collect cost time: %d ms"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService;->c:Lorg/json/JSONObject;

    const-string v2, "selectList"

    iget-object v4, p0, Lcom/aligenie/ags/access/AccessService;->d:Lorg/json/JSONArray;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "commonSelectContext"

    iget-object v2, p0, Lcom/aligenie/ags/access/AccessService;->c:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_4
    const-string v0, "getCommonSelectContextJson end"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 8

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "direction"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aligenie/ags/access/AccessService;->k:Lb/h/k/a0/b;

    invoke-virtual {p0}, Lcom/aligenie/ags/access/AccessService;->a()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/aligenie/ags/access/AccessService;->k:Lb/h/k/a0/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aligenie/ags/access/AccessService;->k:Lb/h/k/a0/b;

    .line 10
    iget-object v1, v1, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/aligenie/ags/access/AccessService;->j:Landroid/content/Context;

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xa9b

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v3, v4, :cond_4

    const v4, 0x201ca2

    if-eq v3, v4, :cond_3

    const v2, 0x239807

    if-eq v3, v2, :cond_2

    const v2, 0x4a5c9fc

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "RIGHT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v1, v6

    goto :goto_1

    :cond_2
    const-string v2, "LEFT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v1, v7

    goto :goto_1

    :cond_3
    const-string v3, "DOWN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_4
    const-string v2, "UP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v1, v5

    :cond_5
    :goto_1
    if-eqz v1, :cond_9

    if-eq v1, v5, :cond_8

    if-eq v1, v7, :cond_7

    if-eq v1, v6, :cond_6

    goto :goto_3

    :cond_6
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/2addr v1, v6

    sub-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    div-int/2addr v2, v7

    add-int/2addr v1, v2

    sget-object v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_SWIPE_LEFT:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    :goto_2
    invoke-static {p0, p1, v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Lcom/aligenie/ags/access/AccessService;IILcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;)V

    goto :goto_3

    :cond_7
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/2addr v1, v6

    add-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    div-int/2addr v2, v7

    add-int/2addr v1, v2

    sget-object v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_SWIPE_RIGHT:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    goto :goto_2

    :cond_8
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/2addr v1, v7

    add-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    div-int/2addr v2, v6

    add-int/2addr v1, v2

    sget-object v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_SWIPE_DOWN:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    goto :goto_2

    :cond_9
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/2addr v1, v7

    add-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    div-int/2addr v2, v6

    sub-int/2addr v1, v2

    sget-object v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_SWIPE_UP:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public final c()V
    .locals 4

    new-instance v0, Lc/a/a/a/a/a/b/a;

    invoke-direct {v0, p0}, Lc/a/a/a/a/a/b/a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lc/a/a/a/a/a/b/a;->a(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/aligenie/ags/access/AccessService;->l:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    const/4 v3, 0x0

    .line 1
    iput-object v3, v0, Lc/a/a/a/a/a/b/a;->g:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lc/a/a/a/a/a/b/a;->g:Ljava/lang/ref/WeakReference;

    .line 2
    :cond_0
    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;->DEFAULT_LISTENER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    .line 3
    iput-object v2, v0, Lc/a/a/a/a/a/b/a;->f:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    .line 4
    iget-object v2, v0, Lc/a/a/a/a/a/b/a;->m:Lc/a/a/a/a/a/b/b;

    .line 5
    iput-boolean v1, v2, Lc/a/a/a/a/a/b/b;->e:Z

    .line 6
    invoke-virtual {v0}, Lc/a/a/a/a/a/b/a;->f()Lc/a/a/a/a/a/b/d;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lc/a/a/a/a/a/b/a;->m:Lc/a/a/a/a/a/b/b;

    .line 7
    iget-object v0, v0, Lc/a/a/a/a/a/b/b;->j:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v0, v1}, Lc/a/a/a/a/a/b/d;->a(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public c(Lb/h/k/a0/b;)V
    .locals 5

    invoke-virtual {p1}, Lb/h/k/a0/b;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lb/h/k/a0/b;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lb/h/k/a0/b;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.webkit.WebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    iget-object v1, p1, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 11
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    mul-int/2addr v2, v1

    int-to-long v0, v2

    iget-object v2, p0, Lcom/aligenie/ags/access/AccessService;->k:Lb/h/k/a0/b;

    if-nez v2, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/aligenie/ags/access/AccessService;->k:Lb/h/k/a0/b;

    goto :goto_2

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/aligenie/ags/access/AccessService;->k:Lb/h/k/a0/b;

    .line 12
    iget-object v3, v3, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 13
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v2

    mul-int/2addr v4, v3

    int-to-long v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lb/h/k/a0/b;->c()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lb/h/k/a0/b;->b(I)Lb/h/k/a0/b;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lb/h/k/a0/b;->b(I)Lb/h/k/a0/b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/aligenie/ags/access/AccessService;->c(Lb/h/k/a0/b;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    const/16 v3, 0x20

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, "Access"

    if-eq v0, v3, :cond_6

    const/high16 p1, 0x100000

    if-eq v0, p1, :cond_0

    const/high16 p1, 0x200000

    if-eq v0, p1, :cond_f

    const-string p1, "Event not in monitor"

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_0
    sget p1, Lc/b/a/a/d/e;->c:I

    if-ne p1, v1, :cond_f

    sget-object p1, Lc/b/a/a/d/e;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    sget-object p1, Lc/b/a/a/d/e;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getWindows()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_3

    .line 1
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const-string v7, "TreeDebug"

    const-string v8, "Window: %s"

    .line 2
    invoke-static {v7, v2, v8, v3}, Lc/b/a/a/d/f;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {v0}, Lc/b/a/a/d/b;->a(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Lc/b/a/a/d/a;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Lb/h/k/a0/b;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 5
    iget-object v7, v0, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    .line 6
    new-instance v8, Lb/h/k/a0/b;

    invoke-direct {v8, v7}, Lb/h/k/a0/b;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 7
    invoke-static {v8, v4, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Lb/h/k/a0/b;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/h/k/a0/b;

    .line 8
    iget-object v7, v7, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_1

    :cond_4
    :goto_2
    new-array v3, v1, [Lb/h/k/a0/b;

    aput-object v0, v3, v5

    .line 9
    invoke-static {v3}, Lc/b/a/a/d/a;->a([Lb/h/k/a0/b;)V

    goto :goto_0

    .line 10
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/aligenie/ags/access/AccessService;->b()Lorg/json/JSONObject;

    goto/16 :goto_7

    :cond_6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-static {p0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.alibaba.ailabs.genie.smartapp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "android.widget.FrameLayout"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "android.widget.LinearLayout"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_9
    new-instance v3, Lcom/aligenie/ags/access/AccessService$g;

    invoke-direct {v3, v4, v0, v2}, Lcom/aligenie/ags/access/AccessService$g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getWindows()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v5

    :cond_b
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_b

    move v4, v1

    goto :goto_6

    :cond_c
    if-nez v4, :cond_a

    iget-object v3, p0, Lcom/aligenie/ags/access/AccessService;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_d
    sget p1, Lc/b/a/a/d/e;->c:I

    if-ne p1, v1, :cond_f

    sget-object p1, Lc/b/a/a/d/e;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    sget-object p1, Lc/b/a/a/d/e;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 11
    :goto_7
    sget-object p1, Lc/b/a/a/d/e;->b:Lc/b/a/a/c/b;

    if-eqz p1, :cond_e

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_8

    :cond_e
    const-string p1, "overLayView is null"

    .line 13
    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_8
    return-void
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    const-string v0, "Access"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/aligenie/ags/access/AccessService$f;

    invoke-direct {v1, p0}, Lcom/aligenie/ags/access/AccessService$f;-><init>(Lcom/aligenie/ags/access/AccessService;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.alibaba.ailabs.genie.assistant.ONLINE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/accessibilityservice/AccessibilityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lc/a/a/a/a/a/b/f;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AGUI isOnLine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/aligenie/ags/access/AccessService;->c()V

    :cond_0
    iput-object p0, p0, Lcom/aligenie/ags/access/AccessService;->j:Landroid/content/Context;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService;->h:Lc/b/a/a/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/b/a/a/c/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService;->i:Lc/b/a/a/c/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/b/a/a/c/f;->a()V

    :cond_1
    return-void
.end method

.method public onInterrupt()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lc/b/a/a/d/e;->a:Lcom/aligenie/ags/access/AccessService;

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onServiceConnected()V
    .locals 3

    const-string v0, "Access"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lc/b/a/a/d/e;->a:Lcom/aligenie/ags/access/AccessService;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    iget v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    sget v1, Lc/b/a/a/d/e;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "createPopupView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1
    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService;->h:Lc/b/a/a/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/b/a/a/c/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aligenie/ags/access/AccessService;->h:Lc/b/a/a/c/a;

    .line 2
    :cond_0
    new-instance v0, Lc/b/a/a/c/a;

    invoke-direct {v0, p0}, Lc/b/a/a/c/a;-><init>(Lcom/aligenie/ags/access/AccessService;)V

    iput-object v0, p0, Lcom/aligenie/ags/access/AccessService;->h:Lc/b/a/a/c/a;

    goto :goto_0

    :cond_1
    const-string v1, "testMode"

    .line 3
    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lc/b/a/a/d/e;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/aligenie/ags/access/AccessService;->b()Lorg/json/JSONObject;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
