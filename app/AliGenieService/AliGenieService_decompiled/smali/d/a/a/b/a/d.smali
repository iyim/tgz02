.class public Ld/a/a/b/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/a/a/b/a/b;


# static fields
.field public static final a:Ljava/lang/String; = "d.a.a.b.a.d"

.field public static final b:Ld/a/a/b/a/k/b;

.field public static c:I

.field public static d:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Ld/a/a/b/a/d;->a:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Ld/a/a/b/a/k/c;->a(Ljava/lang/String;Ljava/lang/String;)Ld/a/a/b/a/k/b;

    move-result-object v0

    sput-object v0, Ld/a/a/b/a/d;->b:Ld/a/a/b/a/k/b;

    const/16 v0, 0x3e8

    sput v0, Ld/a/a/b/a/d;->c:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld/a/a/b/a/d;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ld/a/a/b/a/g;Ljava/lang/Object;Ld/a/a/b/a/a;)Ld/a/a/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    const p0, 0x0

    throw p0
.end method

.method public a(Ljava/lang/Object;Ld/a/a/b/a/a;)Ld/a/a/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const p0, 0x0

    throw p0
.end method

.method public a()Z
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    const p0, 0x0

    throw p0
.end method
