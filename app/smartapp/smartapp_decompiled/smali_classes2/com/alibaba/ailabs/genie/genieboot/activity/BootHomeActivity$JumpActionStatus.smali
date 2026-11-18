.class public final enum Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;
.super Ljava/lang/Enum;
.source "BootHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JumpActionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

.field public static final enum JumpDelay:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

.field public static final enum JumpErro:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

.field public static final enum JumpSuccess:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

.field public static final enum NotInstall:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 80
    new-instance v0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    const/4 v1, 0x0

    const-string v2, "NotInstall"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->NotInstall:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    .line 84
    new-instance v0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    const/4 v2, 0x1

    const-string v3, "JumpErro"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->JumpErro:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    .line 88
    new-instance v0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    const/4 v3, 0x2

    const-string v4, "JumpSuccess"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->JumpSuccess:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    .line 92
    new-instance v0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    const/4 v4, 0x3

    const-string v5, "JumpDelay"

    invoke-direct {v0, v5, v4}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->JumpDelay:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    const/4 v0, 0x4

    .line 76
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    sget-object v5, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->NotInstall:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    aput-object v5, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->JumpErro:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->JumpSuccess:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->JumpDelay:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->$VALUES:[Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

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

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;
    .locals 1

    .line 76
    const-class v0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;
    .locals 1

    .line 76
    sget-object v0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->$VALUES:[Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    return-object v0
.end method
