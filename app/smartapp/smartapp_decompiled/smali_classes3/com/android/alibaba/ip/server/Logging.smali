.class public Lcom/android/alibaba/ip/server/Logging;
.super Ljava/lang/Object;
.source "Logging.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "InstantPatcher"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/android/alibaba/ip/server/Logging$1;

    invoke-direct {v0}, Lcom/android/alibaba/ip/server/Logging$1;-><init>()V

    sput-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
