.class public Lcom/taobao/android/AliNavImp;
.super Ljava/lang/Object;
.source "AliNavImp.java"

# interfaces
.implements Lcom/taobao/android/AliNavInterface;


# instance fields
.field private final mNav:Lcom/taobao/android/nav/Nav;


# direct methods
.method public constructor <init>(Lcom/taobao/android/nav/Nav;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/taobao/android/AliNavImp;->mNav:Lcom/taobao/android/nav/Nav;

    return-void
.end method

.method public static registerHooker(Lcom/taobao/android/nav/Nav$NavHooker;)V
    .locals 0

    .line 80
    invoke-static {p0}, Lcom/taobao/android/nav/Nav;->registerHooker(Lcom/taobao/android/nav/Nav$NavHooker;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerNavMonitor(Lcom/taobao/android/nav/Nav$NavigationTimeMonitor;)V
    .locals 0

    .line 88
    invoke-static {p0}, Lcom/taobao/android/nav/Nav;->registerNavMonitor(Lcom/taobao/android/nav/Nav$NavigationTimeMonitor;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerPreprocessor(Lcom/taobao/android/nav/Nav$NavPreprocessor;)V
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/taobao/android/nav/Nav;->registerPreprocessor(Lcom/taobao/android/nav/Nav$NavPreprocessor;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerPriorHooker(Lcom/taobao/android/nav/Nav$NavHooker;I)V
    .locals 0

    .line 84
    invoke-static {p0, p1}, Lcom/taobao/android/nav/Nav;->registerPriorHooker(Lcom/taobao/android/nav/Nav$NavHooker;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerStickPreprocessor(Lcom/taobao/android/nav/Nav$NavPreprocessor;)V
    .locals 0

    .line 64
    invoke-static {p0}, Lcom/taobao/android/nav/Nav;->registerStickPreprocessor(Lcom/taobao/android/nav/Nav$NavPreprocessor;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setExceptionHandler(Lcom/taobao/android/nav/Nav$NavExceptionHandler;)V
    .locals 0

    .line 92
    invoke-static {p0}, Lcom/taobao/android/nav/Nav;->setExceptionHandler(Lcom/taobao/android/nav/Nav$NavExceptionHandler;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setNavResolver(Lcom/taobao/android/nav/Nav$NavResolver;)V
    .locals 0

    .line 96
    invoke-static {p0}, Lcom/taobao/android/nav/Nav;->setNavResolver(Lcom/taobao/android/nav/Nav$NavResolver;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTransition(II)V
    .locals 0

    .line 100
    invoke-static {p0, p1}, Lcom/taobao/android/nav/Nav;->setTransition(II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static unregisterPreprocessor(Lcom/taobao/android/nav/Nav$NavPreprocessor;)V
    .locals 0

    .line 76
    invoke-static {p0}, Lcom/taobao/android/nav/Nav;->unregisterPreprocessor(Lcom/taobao/android/nav/Nav$NavPreprocessor;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static unregisterStickPreprocessor(Lcom/taobao/android/nav/Nav$NavPreprocessor;)V
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/taobao/android/nav/Nav;->unregisterStickPreprocessor(Lcom/taobao/android/nav/Nav$NavPreprocessor;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createPostUri(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Landroid/net/Uri;
    .locals 0

    .line 60
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public forResult(I)Lcom/taobao/android/AliNavInterface;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/taobao/android/AliNavImp;->mNav:Lcom/taobao/android/nav/Nav;

    invoke-virtual {v0, p1}, Lcom/taobao/android/nav/Nav;->forResult(I)Lcom/taobao/android/nav/Nav;

    return-object p0
.end method

.method public toUri(Landroid/net/Uri;)Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/taobao/android/AliNavImp;->mNav:Lcom/taobao/android/nav/Nav;

    invoke-virtual {v0, p1}, Lcom/taobao/android/nav/Nav;->toUri(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public toUri(Ljava/lang/String;)Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/taobao/android/AliNavImp;->mNav:Lcom/taobao/android/nav/Nav;

    invoke-virtual {v0, p1}, Lcom/taobao/android/nav/Nav;->toUri(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public withCategory(Ljava/lang/String;)Lcom/taobao/android/AliNavInterface;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/taobao/android/AliNavImp;->mNav:Lcom/taobao/android/nav/Nav;

    invoke-virtual {v0, p1}, Lcom/taobao/android/nav/Nav;->withCategory(Ljava/lang/String;)Lcom/taobao/android/nav/Nav;

    return-object p0
.end method

.method public withExtras(Landroid/os/Bundle;)Lcom/taobao/android/AliNavInterface;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/taobao/android/AliNavImp;->mNav:Lcom/taobao/android/nav/Nav;

    invoke-virtual {v0, p1}, Lcom/taobao/android/nav/Nav;->withExtras(Landroid/os/Bundle;)Lcom/taobao/android/nav/Nav;

    return-object p0
.end method

.method public withFlags(I)Lcom/taobao/android/AliNavInterface;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/taobao/android/AliNavImp;->mNav:Lcom/taobao/android/nav/Nav;

    invoke-virtual {v0, p1}, Lcom/taobao/android/nav/Nav;->withFlags(I)Lcom/taobao/android/nav/Nav;

    return-object p0
.end method
