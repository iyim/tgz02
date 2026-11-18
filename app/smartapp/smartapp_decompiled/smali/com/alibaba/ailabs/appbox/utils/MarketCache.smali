.class public Lcom/alibaba/ailabs/appbox/utils/MarketCache;
.super Ljava/lang/Object;
.source "MarketCache.java"


# static fields
.field private static final KEY_MARKET_TAB_PAGE:Ljava/lang/String; = "market_tab_cache_"

.field private static final PREFERENCE_NAME_CON_LIST:Ljava/lang/String; = "market_cache_page_"

.field private static cacheSp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static cacheStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/MarketCache;->cacheSp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 22
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "market_cache_page_"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/MarketCache;->cacheSp:Landroid/content/SharedPreferences;

    .line 24
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/MarketCache;->cacheSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market_tab_cache_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static getCacheStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 28
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/MarketCache;->cacheSp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "market_cache_page_"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/MarketCache;->cacheSp:Landroid/content/SharedPreferences;

    .line 31
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/MarketCache;->cacheSp:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market_tab_cache_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
