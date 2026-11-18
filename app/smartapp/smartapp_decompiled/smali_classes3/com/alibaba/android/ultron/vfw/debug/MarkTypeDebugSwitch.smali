.class public Lcom/alibaba/android/ultron/vfw/debug/MarkTypeDebugSwitch;
.super Ljava/lang/Object;
.source "MarkTypeDebugSwitch.java"


# static fields
.field private static final DEBUG_MODE_KEY:Ljava/lang/String; = "debug_mode"

.field private static final DEBUG_STATE:Ljava/lang/String; = "debugState"

.field private static final DEBUG_STATE_DIALOG_MARK:I = 0x2

.field private static final DEBUG_STATE_WATER_MARK:I = 0x1

.field public static final TYPE_DIALOG_MARK:I = 0x3ea

.field public static final TYPE_WATER_MARK:I = 0x3e9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getMarkType(Landroid/content/Context;)I
    .locals 3

    const/16 v0, 0x3e9

    if-nez p0, :cond_0

    return v0

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "debugState"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "debug_mode"

    .line 57
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    return v0

    :cond_1
    const/16 p0, 0x3ea

    return p0
.end method

.method public static switchMarkType(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "debugState"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 28
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "debug_mode"

    .line 29
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    .line 34
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "has switched to dialog mark"

    .line 36
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "has switched to water mark"

    .line 42
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return v3
.end method
