.class Lunet/org/chromium/net/ProxyChangeListener$ProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lunet/org/chromium/net/ProxyChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyReceiver"
.end annotation


# instance fields
.field final synthetic a:Lunet/org/chromium/net/ProxyChangeListener;


# direct methods
.method private constructor <init>(Lunet/org/chromium/net/ProxyChangeListener;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lunet/org/chromium/net/ProxyChangeListener$ProxyReceiver;->a:Lunet/org/chromium/net/ProxyChangeListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lunet/org/chromium/net/ProxyChangeListener;B)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lunet/org/chromium/net/ProxyChangeListener$ProxyReceiver;-><init>(Lunet/org/chromium/net/ProxyChangeListener;)V

    return-void
.end method

.method private static a(Landroid/content/Intent;)Lunet/org/chromium/net/ProxyChangeListener$ProxyConfig;
    .locals 12

    const-string v0, "Using no proxy configuration due to exception:"

    const-string v1, "ProxyChangeListener"

    const/4 v2, 0x0

    .line 115
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_0

    const-string v3, "android.net.ProxyProperties"

    const-string v5, "proxy"

    goto :goto_0

    :cond_0
    const-string v3, "android.net.ProxyInfo"

    const-string v5, "android.intent.extra.PROXY_INFO"

    .line 123
    :goto_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v2

    .line 128
    :cond_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getHost"

    const/4 v6, 0x0

    .line 129
    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v7, "getPort"

    .line 130
    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const-string v8, "getExclusionList"

    .line 131
    new-array v9, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 133
    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 134
    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v7, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 137
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v9, v4, :cond_2

    .line 138
    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v8, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    .line 139
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 141
    :cond_2
    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v8, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 144
    :goto_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v10, 0x13

    const-string v11, "getPacFileUrl"

    if-lt v9, v10, :cond_3

    :try_start_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v9, v4, :cond_3

    .line 146
    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v11, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 147
    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 148
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 149
    new-instance v3, Lunet/org/chromium/net/ProxyChangeListener$ProxyConfig;

    invoke-direct {v3, v5, v7, p0, v8}, Lunet/org/chromium/net/ProxyChangeListener$ProxyConfig;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v3

    .line 151
    :cond_3
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v4, :cond_4

    .line 152
    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v11, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 153
    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    .line 154
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v3, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 155
    new-instance v3, Lunet/org/chromium/net/ProxyChangeListener$ProxyConfig;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v5, v7, p0, v8}, Lunet/org/chromium/net/ProxyChangeListener$ProxyConfig;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v3

    .line 158
    :cond_4
    new-instance p0, Lunet/org/chromium/net/ProxyChangeListener$ProxyConfig;

    invoke-direct {p0, v5, v7, v2, v8}, Lunet/org/chromium/net/ProxyChangeListener$ProxyConfig;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_1
    move-exception p0

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_2
    move-exception p0

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_3
    move-exception p0

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_4
    move-exception p0

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lunet/org/chromium/net/ProxyChangeListener$ProxyReceiver;->a:Lunet/org/chromium/net/ProxyChangeListener;

    invoke-static {p2}, Lunet/org/chromium/net/ProxyChangeListener$ProxyReceiver;->a(Landroid/content/Intent;)Lunet/org/chromium/net/ProxyChangeListener$ProxyConfig;

    move-result-object p2

    invoke-static {p1, p2}, Lunet/org/chromium/net/ProxyChangeListener;->a(Lunet/org/chromium/net/ProxyChangeListener;Lunet/org/chromium/net/ProxyChangeListener$ProxyConfig;)V

    :cond_0
    return-void
.end method
