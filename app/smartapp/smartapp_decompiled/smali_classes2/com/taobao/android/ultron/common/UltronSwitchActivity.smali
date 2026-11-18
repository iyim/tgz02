.class public Lcom/taobao/android/ultron/common/UltronSwitchActivity;
.super Landroid/app/Activity;
.source "UltronSwitchActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UltronSwitchActivity"


# instance fields
.field container:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private addSwitchInfoView(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    .line 101
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 102
    iget-object p1, p0, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->container:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private processContainerDownloadRefresh(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    const-string v0, "downloadRefresh"

    .line 137
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 140
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 141
    invoke-virtual {p0}, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taobao/android/ultron/common/utils/ContainerSwitchUtils;->toggleContainerDownloadSwitch(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private processPurchaseOptSwitch(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12

    const-string v0, "\u5df2\u7ecf\u6253\u5f00\u6240\u6709\u4e0b\u5355\u4f18\u5316\u5f00\u5173"

    const-string v1, "\u5df2\u7ecf\u5173\u95ed\u6240\u6709\u4e0b\u5355\u4f18\u5316\u5f00\u5173"

    const-string v2, "perfOpt"

    .line 106
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v3, :cond_0

    return-object v4

    .line 109
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v5, "com.taobao.android.purchase.TBPurchaseSwitch"

    .line 111
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "sForcePerfOpt"

    .line 113
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    .line 114
    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 115
    invoke-virtual {v5, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 116
    invoke-virtual {v9, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v10, 0x0

    .line 117
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-object v0

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 130
    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "UltronSwitchActivity"

    invoke-static {p1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v4
.end method

.method private processReflectFields(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11

    const-string v0, "reflectFields"

    .line 146
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    return-object v2

    .line 149
    :cond_0
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 154
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    .line 155
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 156
    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    const-string v5, "className"

    .line 157
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "fieldName"

    .line 158
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "fieldValue"

    .line 159
    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 161
    invoke-virtual {v7, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 162
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 163
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 164
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_b

    const-class v9, Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_5

    .line 166
    :cond_1
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_a

    const-class v9, Ljava/lang/Long;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_4

    .line 168
    :cond_2
    const-class v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 169
    invoke-virtual {v7, v10, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 170
    :cond_3
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_9

    const-class v9, Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    .line 172
    :cond_4
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_8

    const-class v9, Ljava/lang/Float;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    .line 174
    :cond_5
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_7

    const-class v9, Ljava/lang/Double;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    const-string p1, "\u8bbe\u7f6e\u5931\u8d25\uff0c\u7c7b\u578b\u6ca1\u627e\u5230"

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 175
    :cond_7
    :goto_1
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 173
    :cond_8
    :goto_2
    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 171
    :cond_9
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 167
    :cond_a
    :goto_4
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 165
    :cond_b
    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    const-string v7, "\u8bbe\u7f6e\u6210\u529f:"

    .line 181
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "class: "

    .line 182
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "field: "

    .line 183
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 187
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 189
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "UltronSwitchActivity"

    invoke-static {p1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v2
.end method

.method private processSwitch()V
    .locals 6

    .line 64
    invoke-virtual {p0}, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UltronSwitchActivity"

    if-nez v0, :cond_0

    const-string v0, "intent == null"

    .line 66
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 70
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "uri == null"

    .line 72
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 75
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processSwitch uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 78
    invoke-static {p0, v0}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->processSwitch(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->addSwitchInfoView(Ljava/lang/String;)V

    .line 80
    invoke-static {p0, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->processSwitch(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->addSwitchInfoView(Ljava/lang/String;)V

    .line 82
    invoke-static {p0, v0}, Lcom/taobao/android/ultron/common/utils/ApiModifyUtils;->processSwitch(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->addSwitchInfoView(Ljava/lang/String;)V

    .line 84
    invoke-static {p0, v0}, Lcom/taobao/android/ultron/common/utils/WriteRenderDataSwitch;->processSwitch(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->addSwitchInfoView(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, v0}, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->processPurchaseOptSwitch(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->addSwitchInfoView(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0, v0}, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->processContainerDownloadRefresh(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->addSwitchInfoView(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, v0}, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->processReflectFields(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->addSwitchInfoView(Ljava/lang/String;)V

    .line 92
    invoke-static {p0, v0}, Lcom/taobao/android/ultron/common/UltronTestReceiver;->processSwitch(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->addSwitchInfoView(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "default"

    .line 40
    invoke-static {p1}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object p1

    instance-of p1, p1, Lcom/alibaba/android/ultron/inter/UltronDebugDefault;

    if-eqz p1, :cond_0

    return-void

    .line 43
    :cond_0
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->container:Landroid/widget/LinearLayout;

    .line 45
    iget-object v0, p0, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->container:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 46
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x3c

    .line 50
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 51
    iget-object v1, p0, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->container:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->setContentView(Landroid/view/View;)V

    .line 54
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/android/ultron/common/UltronSwitchActivity;->processSwitch()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
