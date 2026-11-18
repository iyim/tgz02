.class public Lunet/org/chromium/base/helper/ViewRootHelper;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "ViewRootHelper"

    const-string v1, "detachFunctor"

    :try_start_0
    const-string v2, "android.view.ViewRoot"

    .line 41
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lunet/org/chromium/base/helper/ViewRootHelper;->a:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :catch_1
    :goto_0
    :try_start_1
    const-string v2, "android.view.ViewRootImpl"

    .line 44
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lunet/org/chromium/base/helper/ViewRootHelper;->b:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 49
    :try_start_2
    sget-object v4, Lunet/org/chromium/base/helper/ViewRootHelper;->b:Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v4, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lunet/org/chromium/base/helper/ViewRootHelper;->c:Ljava/lang/reflect/Method;

    .line 50
    sget-object v4, Lunet/org/chromium/base/helper/ViewRootHelper;->b:Ljava/lang/Class;

    const-string v5, "attachFunctor"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lunet/org/chromium/base/helper/ViewRootHelper;->d:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 53
    :catch_2
    :try_start_3
    sget-object v4, Lunet/org/chromium/base/helper/ViewRootHelper;->b:Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    .line 54
    invoke-virtual {v4, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lunet/org/chromium/base/helper/ViewRootHelper;->e:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :goto_1
    const/4 v1, 0x2

    .line 59
    :try_start_4
    sget-object v4, Lunet/org/chromium/base/helper/ViewRootHelper;->b:Ljava/lang/Class;

    const-string v5, "invokeFunctor"

    new-array v6, v1, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lunet/org/chromium/base/helper/ViewRootHelper;->f:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 63
    :catch_4
    :try_start_5
    sget-object v4, Lunet/org/chromium/base/helper/ViewRootHelper;->b:Ljava/lang/Class;

    const-string v5, "invalidate"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 64
    sput-object v4, Lunet/org/chromium/base/helper/ViewRootHelper;->g:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 65
    sget-object v4, Lunet/org/chromium/base/helper/ViewRootHelper;->g:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 67
    :cond_0
    sget-object v4, Lunet/org/chromium/base/helper/ViewRootHelper;->b:Ljava/lang/Class;

    const-string v5, "invalidateChildInParent"

    new-array v1, v1, [Ljava/lang/Class;

    const-class v6, [I

    aput-object v6, v1, v2

    const-class v6, Landroid/graphics/Rect;

    aput-object v6, v1, v3

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lunet/org/chromium/base/helper/ViewRootHelper;->h:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 72
    :try_start_6
    sget-object v1, Lunet/org/chromium/base/helper/ViewRootHelper;->b:Ljava/lang/Class;

    const-string v4, "dispatchUnhandledKey"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/view/KeyEvent;

    aput-object v6, v5, v2

    .line 73
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lunet/org/chromium/base/helper/ViewRootHelper;->i:Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2

    :catch_5
    :try_start_7
    const-string v1, "android.view.ViewRootImpl can not get method dispatchUnhandledKey!"

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 78
    :goto_2
    :try_start_8
    sget-object v1, Lunet/org/chromium/base/helper/ViewRootHelper;->b:Ljava/lang/Class;

    const-string v4, "dispatchUnhandledInputEvent"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Landroid/view/InputEvent;

    aput-object v5, v3, v2

    .line 79
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lunet/org/chromium/base/helper/ViewRootHelper;->j:Ljava/lang/reflect/Method;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    return-void

    :catch_6
    :try_start_9
    const-string v1, "android.view.ViewRootImpl can not get method dispatchUnhandledInput!"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    return-void

    .line 84
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
