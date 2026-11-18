.class public Lcom/alibaba/ailabs/childmode/ChildModeApi;
.super Ljava/lang/Object;
.source "ChildModeApi.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.alibaba.ailabs.childmode.provider"

.field private static final CHILD_MODE_SETTING_URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/childModeSettingPage"

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final DATA_CENTER_PACKAGE_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.datacenter"

.field private static final ENABLE_CHILD_MODE_URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/childmode?type="

.field private static final EYEYIELD_MODE_SETTING_URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/eyeyieldModeSettingPage"

.field private static final MEHTOD_enableEyeYieldMode:I = 0x3

.field private static final MEHTOD_isChildMode:I = 0x1

.field private static final MEHTOD_isEyeYieldMode:I = 0x2

.field private static final METHOD:Ljava/lang/String; = "method"

.field private static final PARAM:Ljava/lang/String; = "param"

.field private static final RET:Ljava/lang/String; = "ret"

.field private static final TABLE_NAME:Ljava/lang/String; = "childMode"

.field public static final URI_EYE_YIELD_MODE:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.alibaba.ailabs.childmode.provider"

    .line 31
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/childmode/ChildModeApi;->URI_EYE_YIELD_MODE:Landroid/net/Uri;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static enableChildMode(Landroid/content/Context;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const-string p1, "genie://com.alibaba.ailabs.genie.datacenter/childmode?type=open"

    goto :goto_0

    :cond_0
    const-string p1, "genie://com.alibaba.ailabs.genie.datacenter/childmode?type=exit"

    :goto_0
    const/4 v0, 0x1

    const-string v1, "com.alibaba.ailabs.genie.datacenter"

    .line 92
    invoke-static {p0, p1, v1, v0}, Lcom/alibaba/ailabs/childmode/ChildModeApi;->openURI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static enableChildMode(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "genie://com.alibaba.ailabs.genie.datacenter/childmode?type=open&from="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "genie://com.alibaba.ailabs.genie.datacenter/childmode?type=exit&from="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    const-string v0, "com.alibaba.ailabs.genie.datacenter"

    .line 111
    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/ailabs/childmode/ChildModeApi;->openURI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static enableEyeYieldMode(Landroid/content/Context;Z)V
    .locals 3

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :try_start_0
    const-string v0, "content://com.alibaba.ailabs.childmode.provider/childMode"

    .line 125
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 127
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "param"

    .line 128
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "method"

    const/4 v2, 0x3

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 178
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    .line 179
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 180
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const-string p0, "unknown"

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    .line 182
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object p1
.end method

.method public static isChildMode(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "ChildTile"

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 p0, 0x0

    :try_start_0
    const-string v2, "content://com.alibaba.ailabs.childmode.provider/childMode"

    .line 153
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 155
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "method"

    const/4 v5, 0x1

    .line 157
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v4, 0x0

    .line 160
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .line 159
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 161
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 170
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 163
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "isChildMode() exe exception"

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "persist.sys.is.eyeshield.mode"

    const-string v2, ""

    .line 165
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/childmode/ChildModeApi;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChildMode \u7ee7\u7eed\u8bfb\u7cfb\u7edf\u5c5e\u6027\uff1avalue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "1"

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 170
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    :goto_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 172
    :cond_2
    throw v0
.end method

.method public static openChildModeSettingPage(Landroid/content/Context;)V
    .locals 3

    const-string v0, "genie://com.alibaba.ailabs.genie.datacenter/childModeSettingPage"

    const-string v1, "com.alibaba.ailabs.genie.datacenter"

    const/4 v2, 0x1

    .line 62
    invoke-static {p0, v0, v1, v2}, Lcom/alibaba/ailabs/childmode/ChildModeApi;->openURI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static openEyeyieldModeSettingPage(Landroid/content/Context;)V
    .locals 3

    const-string v0, "genie://com.alibaba.ailabs.genie.datacenter/eyeyieldModeSettingPage"

    const-string v1, "com.alibaba.ailabs.genie.datacenter"

    const/4 v2, 0x1

    .line 71
    invoke-static {p0, v0, v1, v2}, Lcom/alibaba/ailabs/childmode/ChildModeApi;->openURI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static openURI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 38
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 42
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    const/high16 p1, 0x10000000

    .line 48
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 39
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
