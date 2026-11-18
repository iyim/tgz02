.class Lanet/channel/monitor/BandWidthSampler$StaticHolder;
.super Ljava/lang/Object;
.source "BandWidthSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/monitor/BandWidthSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StaticHolder"
.end annotation


# static fields
.field static instance:Lanet/channel/monitor/BandWidthSampler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lanet/channel/monitor/BandWidthSampler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanet/channel/monitor/BandWidthSampler;-><init>(Lanet/channel/monitor/BandWidthSampler$1;)V

    sput-object v0, Lanet/channel/monitor/BandWidthSampler$StaticHolder;->instance:Lanet/channel/monitor/BandWidthSampler;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
