.class public final Lcom/uc/webview/export/internal/SDKFactory;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/SDKFactory$a;,
        Lcom/uc/webview/export/internal/SDKFactory$b;
    }
.end annotation


# static fields
.field private static A:Lcom/uc/webview/export/internal/AbstractWebViewFactory; = null

.field private static B:Z = false

.field private static C:Z = false

.field private static final D:Ljava/lang/Object;

.field private static E:Z = false

.field private static F:Z = false

.field public static a:Lcom/uc/webview/export/extension/NotAvailableUCListener; = null

.field public static b:Landroid/webkit/ValueCallback; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static c:Ljava/lang/ClassLoader; = null

.field public static d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit; = null

.field public static e:Landroid/content/Context; = null

.field public static f:Z = false

.field public static g:Ljava/lang/String; = null

.field public static final getCoreType:I = 0x2724
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static final getGlobalSettings:I = 0x2726
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static h:I = 0x0

.field public static final handlePerformanceTests:I = 0x272e
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static i:Lcom/uc/webview/export/extension/InitCallback; = null

.field public static final isInited:I = 0x271a
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static j:Z = false

.field public static k:Z = false

.field public static l:Landroid/webkit/ValueCallback; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static m:Landroid/webkit/ValueCallback; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static n:Landroid/webkit/ValueCallback; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/UCSetupException;",
            ">;"
        }
    .end annotation
.end field

.field public static o:J = 0x0L

.field public static p:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static q:J = 0x0L

.field public static r:J = 0x0L

.field public static s:Ljava/lang/String; = null

.field public static final setBrowserFlag:I = 0x2719
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static final setCoreType:I = 0x2725
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static final setPreloadManager:I = 0x274b
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static final setWebViewFactory:I = 0x2718
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static t:Lcom/uc/webview/export/utility/SetupTask;

.field static u:Z

.field static v:Z

.field static w:Z

.field private static x:I

.field private static y:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

.field private static z:Lcom/uc/webview/export/internal/interfaces/IPreloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 87
    const-class v0, Lcom/uc/webview/export/internal/SDKFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    const/4 v0, 0x0

    .line 89
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    .line 91
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    const/4 v1, 0x0

    .line 96
    sput v1, Lcom/uc/webview/export/internal/SDKFactory;->x:I

    .line 98
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    .line 100
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->y:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 101
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->z:Lcom/uc/webview/export/internal/interfaces/IPreloadManager;

    .line 102
    new-instance v2, Lcom/uc/webview/export/internal/SDKFactory$a;

    invoke-direct {v2, v1}, Lcom/uc/webview/export/internal/SDKFactory$a;-><init>(B)V

    sput-object v2, Lcom/uc/webview/export/internal/SDKFactory;->A:Lcom/uc/webview/export/internal/AbstractWebViewFactory;

    .line 118
    sput v1, Lcom/uc/webview/export/internal/SDKFactory;->h:I

    .line 122
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->j:Z

    .line 123
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->k:Z

    .line 125
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->l:Landroid/webkit/ValueCallback;

    .line 126
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->m:Landroid/webkit/ValueCallback;

    .line 127
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->n:Landroid/webkit/ValueCallback;

    const-wide/16 v2, 0x0

    .line 161
    sput-wide v2, Lcom/uc/webview/export/internal/SDKFactory;->o:J

    .line 163
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/uc/webview/export/internal/SDKFactory;->p:Ljava/util/Map;

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/uc/webview/export/internal/SDKFactory;->q:J

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/uc/webview/export/internal/SDKFactory;->r:J

    const/4 v2, 0x1

    .line 167
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->B:Z

    .line 168
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->C:Z

    .line 175
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/uc/webview/export/internal/SDKFactory;->D:Ljava/lang/Object;

    .line 177
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->s:Ljava/lang/String;

    .line 181
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->E:Z

    .line 184
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->u:Z

    .line 187
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->v:Z

    .line 190
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->w:Z

    .line 325
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->F:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Landroid/content/Context;Lcom/uc/webview/export/internal/interfaces/IWebView;I)Lcom/uc/webview/export/extension/UCExtension;
    .locals 1

    .line 388
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 389
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 391
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->h()V

    const/4 p0, 0x2

    if-ne p2, p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 395
    :cond_1
    new-instance p0, Lcom/uc/webview/export/extension/UCExtension;

    invoke-direct {p0, p1}, Lcom/uc/webview/export/extension/UCExtension;-><init>(Lcom/uc/webview/export/internal/interfaces/IWebView;)V

    return-object p0
.end method

.method public static a(ILandroid/content/Context;)Lcom/uc/webview/export/internal/a;
    .locals 1

    .line 400
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 403
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->h()V

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 405
    new-instance p0, Lcom/uc/webview/export/internal/android/u;

    invoke-direct {p0}, Lcom/uc/webview/export/internal/android/u;-><init>()V

    return-object p0

    .line 407
    :cond_1
    new-instance p0, Lcom/uc/webview/export/internal/uc/b;

    invoke-direct {p0, p1}, Lcom/uc/webview/export/internal/uc/b;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public static a(I)Lcom/uc/webview/export/internal/interfaces/IWebStorage;
    .locals 1

    .line 420
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->h()V

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 422
    new-instance p0, Lcom/uc/webview/export/internal/android/q;

    invoke-direct {p0}, Lcom/uc/webview/export/internal/android/q;-><init>()V

    return-object p0

    .line 424
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->d()Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/uc/webview/export/WebView;Z[I)Lcom/uc/webview/export/internal/interfaces/IWebView;
    .locals 11

    .line 284
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->B:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 285
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->B:Z

    const/16 v0, 0x21c

    .line 286
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 290
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 294
    :cond_1
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    if-eqz v0, :cond_2

    .line 295
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->h()V

    .line 298
    :cond_2
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->b:Landroid/webkit/ValueCallback;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 299
    new-instance v3, Landroid/util/Pair;

    const-string v4, "sdk_wv_b"

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 302
    :cond_3
    sget-object v5, Lcom/uc/webview/export/internal/SDKFactory;->A:Lcom/uc/webview/export/internal/AbstractWebViewFactory;

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    move-object v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/uc/webview/export/internal/AbstractWebViewFactory;->createWebView(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/uc/webview/export/WebView;Z[I)Lcom/uc/webview/export/internal/interfaces/IWebView;

    move-result-object p1

    .line 304
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1329
    :try_start_0
    iget p2, p2, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    goto :goto_0

    .line 1332
    :cond_4
    sget-boolean p2, Lcom/uc/webview/export/internal/SDKFactory;->F:Z

    if-nez p2, :cond_5

    const/4 p2, 0x1

    .line 1333
    sput-boolean p2, Lcom/uc/webview/export/internal/SDKFactory;->F:Z

    .line 1334
    new-instance p2, Lcom/uc/webview/export/internal/b;

    invoke-direct {p2, p0}, Lcom/uc/webview/export/internal/b;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1342
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 305
    :cond_5
    :goto_0
    sget-object p0, Lcom/uc/webview/export/internal/SDKFactory;->b:Landroid/webkit/ValueCallback;

    if-eqz p0, :cond_6

    .line 306
    new-instance p2, Landroid/util/Pair;

    const-string p3, "sdk_wv_a"

    invoke-direct {p2, p3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 312
    :cond_6
    invoke-static {}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->upload()V

    .line 316
    sget-boolean p0, Lcom/uc/webview/export/internal/SDKFactory;->C:Z

    if-eqz p0, :cond_7

    .line 317
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->C:Z

    const/16 p0, 0x21d

    .line 318
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    :cond_7
    return-object p1
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    const-string v0, "flags"

    .line 347
    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v0, "process_private_data_dir_suffix"

    .line 348
    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 350
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0"

    .line 351
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flag_new_webview"

    invoke-static {v3}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a()Ljava/lang/Boolean;
    .locals 1

    .line 245
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->k:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/uc/webview/export/internal/setup/br;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type:"

    .line 943
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/br;->pkgName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "\nPackage Name:"

    .line 946
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/br;->pkgName:Ljava/lang/String;

    .line 947
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "\nSo files path:"

    .line 949
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    .line 950
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nDex files:"

    .line 951
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/br;->sdkShellModule:Landroid/util/Pair;

    const-string v1, "\n"

    if-eqz p1, :cond_1

    .line 953
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/br;->sdkShellModule:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    :cond_1
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    if-eqz p1, :cond_2

    .line 956
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Long;)V
    .locals 4

    .line 233
    sget-wide v0, Lcom/uc/webview/export/internal/SDKFactory;->o:J

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Lcom/uc/webview/export/internal/SDKFactory;->o:J

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 0

    .line 556
    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory$b;->a(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 598
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 599
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/CoreFactory;->a(Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static b(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 2

    .line 623
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 627
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/CoreFactory;->b(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 629
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The getResponseByUrl() is not support in this version."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(I)Lcom/uc/webview/export/internal/interfaces/ICookieManager;
    .locals 1

    .line 429
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->h()V

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 431
    new-instance p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;

    invoke-direct {p0}, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;-><init>()V

    return-object p0

    .line 433
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->getCookieManager()Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .line 375
    :try_start_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 378
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 383
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static b(Ljava/lang/Long;)V
    .locals 6

    .line 237
    sget-wide v0, Lcom/uc/webview/export/internal/SDKFactory;->o:J

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    sput-wide v0, Lcom/uc/webview/export/internal/SDKFactory;->o:J

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 262
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->x:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static c(I)Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;
    .locals 1

    .line 438
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->h()V

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 442
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->getServiceWorkerController()Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 4

    .line 241
    sget-wide v0, Lcom/uc/webview/export/internal/SDKFactory;->o:J

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 270
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "System WebView"

    return-object v0

    .line 276
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->g:Ljava/lang/String;

    return-object v0

    .line 271
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UC WebView Sdk not inited."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 562
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 563
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 565
    :cond_1
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->E:Z

    if-eqz v0, :cond_2

    return-void

    .line 568
    :cond_2
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 569
    sput-boolean p0, Lcom/uc/webview/export/internal/SDKFactory;->E:Z

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCoreInfo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKFactory"

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->g:Ljava/lang/String;

    return-void
.end method

.method public static d(I)Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;
    .locals 1

    .line 447
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->h()V

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 449
    new-instance p0, Lcom/uc/webview/export/internal/android/b;

    invoke-direct {p0}, Lcom/uc/webview/export/internal/android/b;-><init>()V

    return-object p0

    .line 451
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->c()Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;

    move-result-object p0

    return-object p0
.end method

.method public static d()Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;
    .locals 2

    .line 412
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 415
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->getUCMobileWebKit()Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 802
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->x:I

    const/4 v1, 0x0

    const-string v2, "getDefaultUserAgent"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    :try_start_0
    const-string v0, "android.webkit.WebSettings"

    .line 804
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v0, v2, v5, v4}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 807
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1

    :cond_0
    const/4 v5, 0x3

    if-ne v0, v5, :cond_1

    :try_start_1
    const-string v0, "com.uc.webkit.WebSettings"

    .line 813
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v0, v2, v5, v4}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 816
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static e()I
    .locals 1

    .line 465
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->h()V

    .line 467
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->x:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static e(I)Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;
    .locals 1

    .line 456
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->h()V

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 458
    new-instance p0, Lcom/uc/webview/export/internal/android/f;

    invoke-direct {p0}, Lcom/uc/webview/export/internal/android/f;-><init>()V

    return-object p0

    .line 460
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->e()Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 1

    .line 985
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 986
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static f()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;
    .locals 2

    .line 487
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->y:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    if-eqz v0, :cond_0

    return-object v0

    .line 490
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 494
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->b()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 495
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->y:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    return-object v0
.end method

.method public static f(I)V
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 478
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 479
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCoreType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDKFactory"

    invoke-static {v2, v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    sput p0, Lcom/uc/webview/export/internal/SDKFactory;->x:I

    .line 482
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->g()V

    :cond_1
    return-void
.end method

.method static synthetic f(Landroid/content/Context;)V
    .locals 0

    .line 4357
    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 4362
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4364
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public static g()V
    .locals 4

    .line 542
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->D:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->D:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "SDKFactory"

    const-string v3, "releaseLock"

    .line 546
    invoke-static {v2, v3, v1}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 548
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic g(Landroid/content/Context;)V
    .locals 3

    .line 5501
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->v:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_5

    .line 5505
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 5506
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 5509
    :cond_1
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 5513
    :cond_2
    const-class v0, Lcom/uc/webview/export/internal/SDKFactory;

    monitor-enter v0

    .line 5514
    :try_start_0
    sget-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->j:Z

    if-nez v1, :cond_4

    .line 5515
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->t:Lcom/uc/webview/export/utility/SetupTask;

    if-eqz v1, :cond_3

    .line 5516
    sget-object p0, Lcom/uc/webview/export/internal/SDKFactory;->t:Lcom/uc/webview/export/utility/SetupTask;

    invoke-virtual {p0}, Lcom/uc/webview/export/utility/SetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto :goto_0

    :cond_3
    const-string v1, "SDKFactory"

    const-string v2, "initIfNeeded do not setup init"

    .line 5518
    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5519
    new-instance v1, Lcom/uc/webview/export/internal/setup/ay;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/ay;-><init>()V

    const-string v2, "CONTEXT"

    .line 5520
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/uc/webview/export/internal/setup/ay;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/internal/setup/l;

    const-string v1, "AC"

    const-string v2, "true"

    .line 5521
    invoke-virtual {p0, v1, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/internal/setup/l;

    const-string v1, "VIDEO_AC"

    const-string v2, "false"

    .line 5522
    invoke-virtual {p0, v1, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/internal/setup/l;

    .line 5523
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 5526
    :cond_4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5528
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->r()V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    .line 5526
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    :goto_1
    return-void
.end method

.method public static h()V
    .locals 2

    .line 574
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->w:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 2266
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory$b;->a()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 579
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 580
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->i:Lcom/uc/webview/export/extension/InitCallback;

    if-eqz v0, :cond_2

    .line 581
    invoke-interface {v0}, Lcom/uc/webview/export/extension/InitCallback;->notInit()V

    .line 585
    :cond_2
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/uc/webview/export/Build;->IS_INTERNATIONAL_VERSION:Z

    if-eqz v0, :cond_3

    return-void

    .line 589
    :cond_3
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->j:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->t:Lcom/uc/webview/export/utility/SetupTask;

    if-eqz v0, :cond_4

    .line 590
    invoke-virtual {v0}, Lcom/uc/webview/export/utility/SetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 593
    :cond_4
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->r()V

    :cond_5
    return-void
.end method

.method public static i()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 604
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return-object v1

    .line 607
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->d()Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    move-result-object v0

    .line 609
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "sTrafficSent"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 610
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    .line 612
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "sTrafficReceived"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 613
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    .line 614
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "SDKFactory"

    const-string v3, "getTraffic"

    .line 616
    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static varargs invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    const/16 v0, 0x272e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x274b

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    .line 227
    :pswitch_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->f()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object p0

    return-object p0

    :pswitch_1
    const/4 p0, 0x0

    .line 224
    aget-object p0, p1, p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->f(I)V

    goto :goto_0

    .line 222
    :pswitch_2
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 220
    :pswitch_3
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    :goto_0
    :pswitch_4
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2718
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2724
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j()V
    .locals 4

    const-string v0, "apollo"

    .line 648
    invoke-static {v0}, Lcom/uc/webview/export/internal/cd/a;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-wide/32 v1, 0x40000

    .line 649
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    if-nez v0, :cond_0

    .line 650
    invoke-static {v1}, Lcom/uc/webview/export/internal/SDKFactory;->a(Ljava/lang/Long;)V

    goto :goto_0

    .line 652
    :cond_0
    invoke-static {v1}, Lcom/uc/webview/export/internal/SDKFactory;->b(Ljava/lang/Long;)V

    .line 654
    :goto_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 655
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->f()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "sdk_apollo_forbid"

    if-nez v0, :cond_1

    const-string v0, "ucmedia.SDKFactory"

    const-string v3, "sdk cd forbid apollo"

    .line 658
    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    .line 659
    invoke-interface {v1, v2, v0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "0"

    .line 661
    invoke-interface {v1, v2, v0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static k()V
    .locals 3

    .line 669
    sget-object v0, Lcom/uc/webview/export/internal/setup/af;->c:Lcom/uc/webview/export/internal/setup/br;

    if-eqz v0, :cond_0

    .line 670
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    if-eqz v1, :cond_0

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dexPath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&odexPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&soDirPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "core_dex_info"

    invoke-static {v1, v0}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalStringValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static l()Z
    .locals 2

    .line 706
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 709
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->f()Z

    move-result v0

    return v0
.end method

.method public static m()V
    .locals 3

    .line 794
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->x:I

    const-string v1, "enableSlowWholeDocumentDraw"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string v0, "android.webkit.WebView"

    .line 795
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const-string v0, "com.uc.webkit.WebView"

    .line 797
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static n()Lcom/uc/webview/export/internal/interfaces/IPreloadManager;
    .locals 2

    .line 830
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->z:Lcom/uc/webview/export/internal/interfaces/IPreloadManager;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 831
    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IPreloadManager;->setContext(Landroid/content/Context;)V

    .line 832
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->z:Lcom/uc/webview/export/internal/interfaces/IPreloadManager;

    return-object v0
.end method

.method public static o()V
    .locals 3

    .line 977
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->f()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "apollo_str"

    const-string v2, "ap_cache3=0&ap_cache=0&ap_cache_preload=0&ap_enable_preload2=0&ap_enable_cache2=0"

    .line 979
    invoke-interface {v0, v1, v2}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic p()Z
    .locals 2

    .line 4552
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic q()I
    .locals 1

    .line 79
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->x:I

    return v0
.end method

.method private static r()V
    .locals 11

    .line 730
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->u:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "WEBVIEW_POLICY"

    .line 2714
    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 2718
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    const-string v2, "wait_fallback_sys"

    .line 2722
    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_2

    const/16 v2, 0xfa0

    goto :goto_1

    .line 2726
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 735
    :goto_1
    new-instance v3, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v3}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 737
    :cond_3
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->isSetupThread()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v4

    if-nez v4, :cond_5

    .line 738
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 740
    :goto_2
    array-length v2, v0

    if-ge v5, v2, :cond_4

    const/16 v2, 0x8

    if-ge v5, v2, :cond_4

    .line 741
    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.uc.webview.export."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\(.+\\)"

    const-string v4, ""

    .line 742
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 743
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 745
    :cond_4
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xbc5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    const/4 v4, 0x0

    .line 749
    invoke-static {v4}, Lcom/uc/webview/export/internal/SDKFactory$b;->a(Ljava/lang/Runnable;)V

    .line 752
    sget-boolean v6, Lcom/uc/webview/export/internal/SDKFactory;->j:Z

    if-eqz v6, :cond_6

    .line 753
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->resumeAll()V

    .line 755
    :cond_6
    sget v6, Lcom/uc/webview/export/internal/SDKFactory;->x:I

    if-nez v6, :cond_7

    .line 3532
    sget-object v6, Lcom/uc/webview/export/internal/SDKFactory;->D:Ljava/lang/Object;

    monitor-enter v6

    .line 3534
    :try_start_0
    sget-object v7, Lcom/uc/webview/export/internal/SDKFactory;->D:Ljava/lang/Object;

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v7

    :try_start_1
    const-string v8, "SDKFactory"

    const-string v9, "getLock"

    .line 3536
    invoke-static {v8, v9, v7}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3538
    :goto_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 763
    invoke-virtual {v3}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v6

    int-to-long v8, v2

    cmp-long v10, v6, v8

    if-ltz v10, :cond_3

    if-eq v0, v1, :cond_3

    goto :goto_5

    .line 3538
    :goto_4
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 767
    :cond_7
    :goto_5
    invoke-static {v4}, Lcom/uc/webview/export/internal/SDKFactory$b;->a(Ljava/lang/Runnable;)V

    .line 769
    const-class v3, Lcom/uc/webview/export/internal/SDKFactory;

    monitor-enter v3

    .line 770
    :try_start_3
    sget v4, Lcom/uc/webview/export/internal/SDKFactory;->x:I

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-nez v4, :cond_a

    if-ne v0, v7, :cond_8

    .line 772
    invoke-static {v7}, Lcom/uc/webview/export/internal/SDKFactory;->f(I)V

    goto :goto_6

    :cond_8
    if-eq v0, v5, :cond_9

    goto :goto_6

    .line 774
    :cond_9
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v4, 0xfa9

    const-string v5, "Thread [%s] waitting for init is up to [%s] milis."

    new-array v7, v7, [Ljava/lang/Object;

    .line 776
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 777
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 775
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_a
    :goto_6
    const-string v4, "SDKFactory"

    .line 780
    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v9, "waitForInit(sWebViewPolicy=%d, sMaxWaitMillis=%d)=%d"

    new-array v5, v5, [Ljava/lang/Object;

    .line 781
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    .line 780
    invoke-static {v8, v9, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    monitor-exit v3

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method
