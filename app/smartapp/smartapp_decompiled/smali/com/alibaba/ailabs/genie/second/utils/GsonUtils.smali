.class public final Lcom/alibaba/ailabs/genie/second/utils/GsonUtils;
.super Ljava/lang/Object;
.source "GsonUtils.java"


# static fields
.field public static final ourGSON:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/second/utils/GsonUtils;->ourGSON:Lcom/google/gson/Gson;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
