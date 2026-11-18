.class Lanet/channel/bytes/ByteArrayPool$SingleInstance;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/bytes/ByteArrayPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleInstance"
.end annotation


# static fields
.field static instance:Lanet/channel/bytes/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lanet/channel/bytes/ByteArrayPool;

    invoke-direct {v0}, Lanet/channel/bytes/ByteArrayPool;-><init>()V

    sput-object v0, Lanet/channel/bytes/ByteArrayPool$SingleInstance;->instance:Lanet/channel/bytes/ByteArrayPool;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
