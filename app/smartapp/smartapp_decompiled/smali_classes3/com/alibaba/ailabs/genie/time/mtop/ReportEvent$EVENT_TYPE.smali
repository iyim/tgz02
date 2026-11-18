.class public final enum Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;
.super Ljava/lang/Enum;
.source "ReportEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EVENT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;

.field public static final enum EVENT_NORMAL:Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;

.field public static final enum EVENT_TIME:Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 49
    new-instance v0, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;

    const/4 v1, 0x0

    const-string v2, "EVENT_NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;->EVENT_NORMAL:Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;

    .line 53
    new-instance v0, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;

    const/4 v2, 0x1

    const-string v3, "EVENT_TIME"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;->EVENT_TIME:Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;

    const/4 v0, 0x2

    .line 45
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;

    sget-object v3, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;->EVENT_NORMAL:Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;

    aput-object v3, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;->EVENT_TIME:Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;->$VALUES:[Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;

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

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;
    .locals 1

    .line 45
    const-class v0, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;
    .locals 1

    .line 45
    sget-object v0, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;->$VALUES:[Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;

    return-object v0
.end method
