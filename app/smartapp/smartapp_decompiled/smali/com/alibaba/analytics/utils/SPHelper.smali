.class public Lcom/alibaba/analytics/utils/SPHelper;
.super Ljava/lang/Object;
.source "SPHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 18
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static fastCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    const/4 v0, 0x1

    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v1, "4.3.8 cacheLog [fastCommit]"

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_1

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 25
    invoke-static {p0}, Lcom/alibaba/analytics/utils/SPHelper;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
