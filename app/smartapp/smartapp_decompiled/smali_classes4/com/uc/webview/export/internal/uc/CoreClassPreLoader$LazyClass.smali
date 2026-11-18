.class public Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/uc/CoreClassPreLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyClass"
.end annotation


# instance fields
.field final a:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final sCoreClassLoaderImpl:Ljava/lang/Class;
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 6

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;->b:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    .line 48
    invoke-static {p1}, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;->a(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;->sCoreClassLoaderImpl:Ljava/lang/Class;

    .line 50
    new-instance p1, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;->sCoreClassLoaderImpl:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/ClassLoader;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "loadCoreClass"

    invoke-direct {p1, v0, v3, v2}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;->a:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    .line 55
    :try_start_0
    new-instance p1, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;->sCoreClassLoaderImpl:Ljava/lang/Class;

    const-string v2, "loadCoreClassLevel"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/ClassLoader;

    aput-object v5, v3, v4

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v3, v1

    invoke-direct {p1, v0, v2, v3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader$LazyClass;->b:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static a(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.uc.webkit.sdk.CoreClassPreLoaderImpl"

    const/4 v1, 0x1

    .line 41
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 43
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xfbc

    invoke-direct {v0, v1, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method
