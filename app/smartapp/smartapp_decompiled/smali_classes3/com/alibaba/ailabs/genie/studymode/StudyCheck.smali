.class public Lcom/alibaba/ailabs/genie/studymode/StudyCheck;
.super Ljava/lang/Object;
.source "StudyCheck.java"


# static fields
.field private static final KEY_ORANGE:Ljava/lang/String; = "EBc5YFMFCdiP"

.field public static final PROP_STUDY_MODEL:Ljava/lang/String; = "persist.sys.is.study.mode"

.field private static final TAG:Ljava/lang/String; = "StudyCheck"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHaveFocusMode:Ljava/lang/Boolean;

.field private mOrangeAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mOrangeAppList:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mContext:Landroid/content/Context;

    const-string p1, "persist.sys.is.study.mode"

    const-string v0, "0"

    .line 38
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private checkStudyMode(Ljava/lang/String;)Z
    .locals 2

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->getAppList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private enterStudyMode(Z)V
    .locals 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterStudyMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StudyCheck"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "persist.sys.is.study.mode"

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mContext:Landroid/content/Context;

    const-string v2, "\u8fdb\u5165\u5b66\u4e60\u6a21\u5f0f, \u6d88\u606f\u901a\u77e5\u4f1a\u88ab\u5c4f\u853d"

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "1"

    .line 87
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/studymode/FocusModeData;->setFocusMode(Landroid/content/Context;I)V

    const/4 p1, 0x0

    const-string v0, "a1z3lt.b18307827"

    const-string v1, "studyMode"

    .line 89
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mContext:Landroid/content/Context;

    const-string v2, "\u9000\u51fa\u5b66\u4e60\u6a21\u5f0f, \u6d88\u606f\u901a\u77e5\u4f1a\u6062\u590d"

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "0"

    .line 92
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/studymode/FocusModeData;->setFocusMode(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private getAppList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mOrangeAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "StudyCheck"

    if-nez v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mContext:Landroid/content/Context;

    const-string v2, "EBc5YFMFCdiP"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orangeConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "studyApp"

    .line 120
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 122
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 123
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mOrangeAppList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mOrangeAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mOrangeAppList:Ljava/util/List;

    return-object v0

    .line 128
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/studymode/Constants;->getDefaultAppList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 131
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Lcom/alibaba/ailabs/genie/studymode/Constants;->getDefaultAppList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 134
    :cond_2
    invoke-static {}, Lcom/alibaba/ailabs/genie/studymode/Constants;->getDefaultAppList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "return orangeAppList"

    .line 137
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mOrangeAppList:Ljava/util/List;

    return-object v0
.end method

.method private readFlag()Ljava/lang/Boolean;
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object v0

    const-string v1, "focusMode"

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focusMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StudyCheck"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 74
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mHaveFocusMode:Ljava/lang/Boolean;

    const-string v0, "\u8be5\u673a\u578b\u4e0d\u652f\u6301\u5b66\u4e60\u6a21\u5f0f"

    .line 75
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 77
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mHaveFocusMode:Ljava/lang/Boolean;

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mHaveFocusMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method private utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utEvent spm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " props:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommUtils"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "spm"

    .line 149
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    .line 153
    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    const/4 p1, 0x0

    .line 156
    nop

    nop

    invoke-static {p2, p1, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public checkApp(Ljava/lang/String;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mHaveFocusMode:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->readFlag()Ljava/lang/Boolean;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mHaveFocusMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 49
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/studymode/Constants;->getExcludeAppList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "StudyCheck"

    if-eqz v0, :cond_2

    const-string p1, "\u901a\u8bdd\u754c\u9762\u6216\u8005\u6388\u6743\u754c\u9762\uff0creturn"

    .line 51
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 54
    :cond_2
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->checkStudyMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 55
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/studymode/FocusModeData;->isFocusMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "\u672c\u6765\u5c31\u662f\u5b66\u4e60\u6a21\u5f0f, return"

    .line 56
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 p1, 0x1

    .line 59
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->enterStudyMode(Z)V

    goto :goto_0

    .line 61
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/studymode/FocusModeData;->isFocusMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "\u8fd8\u6ca1\u6709\u8fdb\u5165\u8fc7\u5b66\u4e60\u6a21\u5f0f, return"

    .line 62
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;->enterStudyMode(Z)V

    :goto_0
    return-void
.end method
