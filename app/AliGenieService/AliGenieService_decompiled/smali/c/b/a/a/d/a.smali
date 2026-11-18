.class public Lc/b/a/a/d/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Lc/b/a/a/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/a/d/d<",
            "Lb/h/k/a0/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final f:Lc/b/a/a/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/a/d/d<",
            "Lb/h/k/a0/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lc/b/a/a/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/a/d/d<",
            "Lb/h/k/a0/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lc/b/a/a/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/a/d/d<",
            "Lb/h/k/a0/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/b/a/a/d/a;->a:Ljava/lang/String;

    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/b/a/a/d/a;->b:Ljava/lang/String;

    new-instance v0, Lc/b/a/a/d/a$b;

    invoke-direct {v0}, Lc/b/a/a/d/a$b;-><init>()V

    sput-object v0, Lc/b/a/a/d/a;->c:Lc/b/a/a/d/d;

    const-string v0, "com.sec.android.touchwiz.widget.TwAdapterView"

    invoke-static {v0}, Lc/b/a/a/d/g/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lc/b/a/a/d/a;->d:Ljava/lang/Class;

    const-string v0, ":id/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-class v0, Landroid/text/style/ClickableSpan;

    sput-object v0, Lc/b/a/a/d/a;->e:Ljava/lang/Class;

    const-string v0, "com.android.systemui:id/key\\d{0,9}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    new-instance v0, Lc/b/a/a/d/a$c;

    invoke-direct {v0}, Lc/b/a/a/d/a$c;-><init>()V

    sput-object v0, Lc/b/a/a/d/a;->f:Lc/b/a/a/d/d;

    sget-object v0, Lc/b/a/a/d/a;->f:Lc/b/a/a/d/d;

    new-instance v1, Lc/b/a/a/d/a$d;

    invoke-direct {v1}, Lc/b/a/a/d/a$d;-><init>()V

    invoke-virtual {v0, v1}, Lc/b/a/a/d/d;->a(Lc/b/a/a/d/d;)Lc/b/a/a/d/d;

    new-instance v0, Lc/b/a/a/d/a$e;

    invoke-direct {v0}, Lc/b/a/a/d/a$e;-><init>()V

    sput-object v0, Lc/b/a/a/d/a;->g:Lc/b/a/a/d/d;

    new-instance v0, Lc/b/a/a/d/a$a;

    invoke-direct {v0}, Lc/b/a/a/d/a$a;-><init>()V

    sput-object v0, Lc/b/a/a/d/a;->h:Lc/b/a/a/d/d;

    return-void
.end method

.method public static a(Landroid/view/accessibility/AccessibilityNodeInfo;)Lb/h/k/a0/b;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lb/h/k/a0/b;

    invoke-direct {v0, p0}, Lb/h/k/a0/b;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method

.method public static varargs a([Lb/h/k/a0/b;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, v2, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Lb/h/k/a0/b;)Z
    .locals 0

    .line 1
    invoke-static {}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b()Z

    .line 2
    invoke-virtual {p0}, Lb/h/k/a0/b;->t()Z

    move-result p0

    return p0
.end method

.method public static b(Lb/h/k/a0/b;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p0, p0, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez p0, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAvailableExtraData()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
