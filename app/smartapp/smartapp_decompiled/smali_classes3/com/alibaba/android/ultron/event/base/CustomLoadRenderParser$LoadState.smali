.class public final enum Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;
.super Ljava/lang/Enum;
.source "CustomLoadRenderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

.field public static final enum SATAE_FAILED:Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

.field public static final enum STATE_LOADING:Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

.field public static final enum STATE_SUCCESS:Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

    const/4 v1, 0x0

    const-string v2, "STATE_LOADING"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;->STATE_LOADING:Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

    .line 14
    new-instance v0, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

    const/4 v2, 0x1

    const-string v3, "STATE_SUCCESS"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;->STATE_SUCCESS:Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

    .line 15
    new-instance v0, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

    const/4 v3, 0x2

    const-string v4, "SATAE_FAILED"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;->SATAE_FAILED:Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

    sget-object v4, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;->STATE_LOADING:Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;->STATE_SUCCESS:Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;->SATAE_FAILED:Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;->$VALUES:[Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;
    .locals 1

    .line 12
    const-class v0, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;
    .locals 1

    .line 12
    sget-object v0, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;->$VALUES:[Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

    invoke-virtual {v0}, [Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

    return-object v0
.end method
