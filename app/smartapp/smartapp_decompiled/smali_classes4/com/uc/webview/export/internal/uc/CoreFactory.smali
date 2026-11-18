.class public Lcom/uc/webview/export/internal/uc/CoreFactory;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/uc/CoreFactory$a;
    }
.end annotation


# static fields
.field protected static a:Lcom/uc/webview/export/internal/uc/CoreFactory$a;

.field protected static b:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a()V
    .locals 0

    .line 146
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 240
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$a;->n:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .line 244
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$a;->o:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 3

    .line 248
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$a;->p:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/WebResourceResponse;

    return-object p0
.end method

.method public static b()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;
    .locals 1

    .line 170
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$a;->b:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    return-object v0
.end method

.method public static c()Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;
    .locals 1

    .line 189
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$a;->f:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;

    return-object v0
.end method

.method public static createWebView(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/uc/webview/export/internal/interfaces/IWebView;
    .locals 4
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .line 204
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$a;->j:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 205
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    move-result-object p1

    iget-object p1, p1, Lcom/uc/webview/export/internal/uc/CoreFactory$a;->i:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/internal/interfaces/IWebView;

    return-object p0

    .line 207
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$a;->j:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/internal/interfaces/IWebView;

    return-object p0
.end method

.method public static d()Lcom/uc/webview/export/internal/interfaces/IWebStorage;
    .locals 1

    .line 193
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$a;->g:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    return-object v0
.end method

.method public static e()Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;
    .locals 1

    .line 197
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$a;->h:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;

    return-object v0
.end method

.method public static f()Z
    .locals 1

    .line 212
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$a;->j:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static g()Lcom/uc/webview/export/extension/ARManager;
    .locals 1

    .line 252
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$a;->q:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/extension/ARManager;

    return-object v0
.end method

.method public static getCookieManager()Lcom/uc/webview/export/internal/interfaces/ICookieManager;
    .locals 1
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .line 175
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$a;->c:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    return-object v0
.end method

.method public static getCoreType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .line 236
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$a;->m:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getServiceWorkerController()Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;
    .locals 1
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .line 180
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$a;->d:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;

    return-object v0
.end method

.method public static getUCMobileWebKit()Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;
    .locals 1
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .line 185
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$a;->e:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    return-object v0
.end method

.method private static declared-synchronized h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;
    .locals 2

    const-class v0, Lcom/uc/webview/export/internal/uc/CoreFactory;

    monitor-enter v0

    .line 150
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/uc/CoreFactory;->a:Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    if-nez v1, :cond_1

    const/16 v1, 0x91

    .line 152
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 154
    new-instance v1, Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/uc/CoreFactory$a;-><init>()V

    sput-object v1, Lcom/uc/webview/export/internal/uc/CoreFactory;->a:Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    .line 155
    sget-object v1, Lcom/uc/webview/export/internal/uc/CoreFactory;->b:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 156
    sget-object v1, Lcom/uc/webview/export/internal/uc/CoreFactory;->b:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/16 v1, 0x92

    .line 159
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 162
    :cond_1
    sget-object v1, Lcom/uc/webview/export/internal/uc/CoreFactory;->a:Lcom/uc/webview/export/internal/uc/CoreFactory$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initUCMobileWebKit(Landroid/content/Context;ZZ)Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;
    .locals 3
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .line 222
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$a;->k:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 223
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    .line 222
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    return-object p0
.end method

.method public static initUCMobileWebkitCoreSoEnv(Landroid/content/Context;Ljava/util/HashMap;)Z
    .locals 3
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 230
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->h()Lcom/uc/webview/export/internal/uc/CoreFactory$a;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$a;->l:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
