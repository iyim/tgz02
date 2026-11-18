.class final Lcom/uc/webview/export/internal/SDKFactory$a;
.super Lcom/uc/webview/export/internal/AbstractWebViewFactory;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/SDKFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 903
    invoke-direct {p0}, Lcom/uc/webview/export/internal/AbstractWebViewFactory;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 903
    invoke-direct {p0}, Lcom/uc/webview/export/internal/SDKFactory$a;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public final createWebView(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/uc/webview/export/WebView;Z[I)Lcom/uc/webview/export/internal/interfaces/IWebView;
    .locals 5

    .line 907
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 908
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 910
    :cond_0
    invoke-static {p1}, Lcom/uc/webview/export/internal/SDKFactory;->g(Landroid/content/Context;)V

    .line 913
    sget v0, Lcom/uc/webview/export/internal/interfaces/CommonDef;->sOnCreateWindowType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3

    if-eqz p4, :cond_1

    goto :goto_0

    .line 916
    :cond_1
    sget v0, Lcom/uc/webview/export/internal/interfaces/CommonDef;->sOnCreateWindowType:I

    if-ne v0, v2, :cond_2

    .line 918
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->getCoreType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 920
    :cond_2
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->q()I

    move-result v0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x2

    :goto_1
    const/4 v3, 0x3

    .line 923
    new-array v3, v3, [Ljava/lang/Object;

    .line 924
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const/4 v4, 0x0

    aput-object p4, v3, v4

    sget p4, Lcom/uc/webview/export/internal/interfaces/CommonDef;->sOnCreateWindowType:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v3, v2

    const-string p4, "createWebView(forceUsSystem=%b, sOnCreateWindowType=%d)=%d"

    .line 923
    invoke-static {p4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string v1, "SDKFactory"

    invoke-static {v1, p4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    aput v0, p5, v4

    if-ne v0, v2, :cond_4

    .line 928
    new-instance p4, Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-direct {p4, p1, p2, p3}, Lcom/uc/webview/export/internal/android/WebViewAndroid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/uc/webview/export/WebView;)V

    return-object p4

    .line 930
    :cond_4
    invoke-static {p1, p2}, Lcom/uc/webview/export/internal/uc/CoreFactory;->createWebView(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/uc/webview/export/internal/interfaces/IWebView;

    move-result-object p1

    return-object p1
.end method
