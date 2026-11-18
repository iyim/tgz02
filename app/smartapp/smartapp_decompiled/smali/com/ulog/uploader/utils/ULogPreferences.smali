.class public Lcom/ulog/uploader/utils/ULogPreferences;
.super Ljava/lang/Object;
.source "ULogPreferences.java"


# static fields
.field private static final FLAG_FILE:Ljava/lang/String; = "ulog_flags"

.field public static final PUSH_LEVEL:Ljava/lang/String; = "ulog_push_level"

.field public static final PUSH_LEVEL_AGE:Ljava/lang/String; = "ulog_push_level_age"

.field public static final PUSH_LEVEL_TSP:Ljava/lang/String; = "ulog_push_level_tsp"

.field private static final TAG:Ljava/lang/String; = "ULogUpload.ULogPreferences"

.field public static final ULOG_ENABLE:Ljava/lang/String; = "ulog_is_enable"

.field private static sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static applySharedPreference()V
    .locals 4

    .line 84
    sget-object v0, Lcom/ulog/uploader/utils/ULogPreferences;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 87
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez v0, :cond_1

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 91
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_2

    .line 93
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ULogUpload.ULogPreferences"

    const-string v3, "exception"

    .line 95
    invoke-static {v2, v3, v1}, Lcom/uc/sdk/ulog/ULog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 99
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getIntValue(Ljava/lang/String;I)I
    .locals 1

    .line 61
    sget-object v0, Lcom/ulog/uploader/utils/ULogPreferences;->sp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    sget-object v0, Lcom/ulog/uploader/utils/ULogPreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method public static getLongValue(Ljava/lang/String;J)J
    .locals 1

    .line 77
    sget-object v0, Lcom/ulog/uploader/utils/ULogPreferences;->sp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    sget-object v0, Lcom/ulog/uploader/utils/ULogPreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    return-wide p1
.end method

.method public static getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/ulog/uploader/utils/ULogPreferences;->sp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    sget-object v0, Lcom/ulog/uploader/utils/ULogPreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "ulog_flags"

    .line 31
    invoke-static {p0, v0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/ulog/uploader/utils/ULogPreferences;->sp:Landroid/content/SharedPreferences;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setIntValue(Ljava/lang/String;I)V
    .locals 1

    .line 52
    sget-object v0, Lcom/ulog/uploader/utils/ULogPreferences;->sp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    sget-object v0, Lcom/ulog/uploader/utils/ULogPreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setLongValue(Ljava/lang/String;J)V
    .locals 1

    .line 68
    sget-object v0, Lcom/ulog/uploader/utils/ULogPreferences;->sp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    sget-object v0, Lcom/ulog/uploader/utils/ULogPreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 43
    sget-object v0, Lcom/ulog/uploader/utils/ULogPreferences;->sp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/ulog/uploader/utils/ULogPreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
