.class public Lcom/alibaba/ailabs/tg/utils/ReflectUtils$ReflectException;
.super Ljava/lang/RuntimeException;
.source "ReflectUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/tg/utils/ReflectUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xbeafa78b218e410L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 474
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 478
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 482
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
