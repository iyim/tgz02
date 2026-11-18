.class public Lcom/alibaba/ailabs/avesdk/AVEClientSdk;
.super Ljava/lang/Object;
.source "AVEClientSdk.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AVEClientSdk"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAVEService(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;)Lcom/alibaba/ailabs/avesdk/AVEClient;
    .locals 3

    .line 13
    new-instance v0, Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-direct {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;-><init>()V

    .line 15
    new-instance v1, Lcom/alibaba/ailabs/avesdk/AVEClientSdk$1;

    invoke-direct {v1, p1}, Lcom/alibaba/ailabs/avesdk/AVEClientSdk$1;-><init>(Lcom/alibaba/ailabs/acamera/IACameraCallback;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->init(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;I)Z

    return-object v0
.end method

.method public static releaseAVEService(Lcom/alibaba/ailabs/avesdk/AVEClient;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
