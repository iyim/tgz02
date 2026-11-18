.class public final Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;
.super Ljava/lang/Object;
.source "SharedPreferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils$Holder;
    }
.end annotation


# static fields
.field public static final KEY_DISTURB_ENABLE:Ljava/lang/String; = "disturb_enabled"

.field public static final KEY_DISTURB_TIMED_STATUS:Ljava/lang/String; = "disturb_timed"

.field public static final KEY_DND_MODE_ENABLE_MANUALLY:Ljava/lang/String; = "dnd_mode_enabled_manually"

.field public static final SP_BTN_CLICK_DATE:Ljava/lang/String; = "btn_clicked_date"

.field public static final SP_DISTURB_STATUS:Ljava/lang/String; = "disturb_status"

.field public static final SP_DND_CLOSED_BY_USER_IN_TCM:Ljava/lang/String; = "dnd_closed_by_user_in_tcm"

.field public static final SP_NAME_CHILD_MODE:Ljava/lang/String; = "sp_name_child_mode"

.field public static final SP_WAKEUP_QUIET:Ljava/lang/String; = "feedback_quiet"

.field private static final TAG:Ljava/lang/String; = "SharedPreferenceUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Landroid/content/SharedPreferences;
    .locals 1

    .line 12
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->fetchDefault()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static apply()V
    .locals 1

    .line 87
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static clear()V
    .locals 1

    .line 79
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static commit()V
    .locals 0

    .line 83
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->apply()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 1

    .line 47
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static fetchDefault()Landroid/content/SharedPreferences;
    .locals 1

    .line 107
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 19
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 103
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 43
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBooleanFromDisturbModel(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    .line 180
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getDisturbModelSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sp get key:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SharedPreferenceUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getDisturbEnable(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "disturb_enabled"

    const/4 v1, 0x0

    .line 138
    invoke-static {p0, v0, v1}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getBooleanFromDisturbModel(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getDisturbModelSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "disturb_status"

    const/4 v1, 0x0

    .line 134
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getDndModeClosedByUser(Landroid/content/Context;)Z
    .locals 2

    .line 159
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getDisturbModelSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "dnd_closed_by_user_in_tcm"

    const/4 v1, 0x0

    .line 160
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDndModeClosedByUser, value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SharedPreferenceUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private static getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 115
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 39
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    .line 31
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getIntFromDisturbModel(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .line 186
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getDisturbModelSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 187
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sp get key:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SharedPreferenceUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 1

    .line 35
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getSp()Landroid/content/SharedPreferences;
    .locals 1

    .line 111
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils$Holder;->access$100()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeCycleModeStatus(Landroid/content/Context;)Z
    .locals 2

    .line 153
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getDisturbModelSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "disturb_timed"

    const/4 v1, 0x1

    .line 154
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static putBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 71
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static putBooleanToDisturbModel(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sp save key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SharedPreferenceUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getDisturbModelSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putFloat(Ljava/lang/String;F)V
    .locals 1

    .line 67
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static putInt(Ljava/lang/String;I)V
    .locals 1

    .line 59
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static putLong(Ljava/lang/String;J)V
    .locals 1

    .line 63
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static putLongToDisturbModel(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sp save key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SharedPreferenceUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getDisturbModelSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 91
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1

    .line 75
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setDisturModeSharePreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 146
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getDisturbModelSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 147
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 148
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setDisturbEnable(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "disturb_enabled"

    .line 142
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->putBooleanToDisturbModel(Landroid/content/Context;Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setDndModeClosedByUser(Landroid/content/Context;Z)V
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDndModeClosedByUser, value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SharedPreferenceUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getDisturbModelSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 169
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "dnd_closed_by_user_in_tcm"

    .line 170
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 95
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
