.class public Lcom/taobao/android/sku/bizevent/SwitchMarkTypeHandler;
.super Ljava/lang/Object;
.source "SwitchMarkTypeHandler.java"

# interfaces
.implements Lcom/taobao/android/sku/handler/IAliXSkuHandler;


# static fields
.field public static final EVENT_TYPE:Ljava/lang/String; = "switch_mark_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public handleEvent(Lcom/taobao/android/sku/handler/SkuEvent;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V
    .locals 5

    .line 23
    invoke-virtual {p1}, Lcom/taobao/android/sku/handler/SkuEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {p1}, Lcom/taobao/android/sku/handler/SkuEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "sku_mark_type"

    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 30
    invoke-virtual {p2}, Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;->getSkuCore()Lcom/taobao/android/sku/AliXSkuCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/android/sku/AliXSkuCore;->getMarkType()I

    move-result v2

    const/16 v3, 0x3ea

    if-eqz v2, :cond_1

    if-eq v2, v3, :cond_0

    const-string v2, "\u5173\u95ed"

    move-object v3, v2

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e9

    const-string v3, "\u6c34\u5370"

    goto :goto_0

    :cond_1
    const-string v2, "\u5f39\u6846"

    move-object v3, v2

    const/16 v2, 0x3ea

    :goto_0
    const-string v4, "type"

    .line 46
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    invoke-virtual {p2}, Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;->getSkuCore()Lcom/taobao/android/sku/AliXSkuCore;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/taobao/android/sku/AliXSkuCore;->switchMarkType(I)V

    .line 49
    invoke-virtual {p1}, Lcom/taobao/android/sku/handler/SkuEvent;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method
