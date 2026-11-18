.class public Lcom/alibaba/ailabs/genie/custom/contacts/common/ut/ClickUTUtils;
.super Ljava/lang/Object;
.source "ClickUTUtils.java"


# static fields
.field private static final CALL_RECORD_PAGE_NAME:Ljava/lang/String; = "Call_logs"

.field private static final CALL_RECORD_SPM:Ljava/lang/String; = "a1z3lt.12013448"

.field private static final DETAILS_PAGE_NAME:Ljava/lang/String; = "call_details"

.field private static final DETAILS_SPM:Ljava/lang/String; = "a1z3lt.12013386"

.field private static final DIAL_PAGE_NAME:Ljava/lang/String; = "Call_keypad"

.field private static final DIAL_SPM:Ljava/lang/String; = "a1z3lt.12013438"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static addAvatar()V
    .locals 1

    .line 23
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/ut/-$$Lambda$ClickUTUtils$QPtK8E_v5Wet581fDp_opvDVfH0;->INSTANCE:Lcom/alibaba/ailabs/genie/custom/contacts/common/ut/-$$Lambda$ClickUTUtils$QPtK8E_v5Wet581fDp_opvDVfH0;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static callAudio()V
    .locals 1

    .line 71
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/ut/-$$Lambda$ClickUTUtils$kl2IAcszsg4BkbhBXv7oEWY1Pjw;->INSTANCE:Lcom/alibaba/ailabs/genie/custom/contacts/common/ut/-$$Lambda$ClickUTUtils$kl2IAcszsg4BkbhBXv7oEWY1Pjw;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static callPstn()V
    .locals 1

    .line 55
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/ut/-$$Lambda$ClickUTUtils$BLXGKiWm-cTyF3xuilUNFuP7x3o;->INSTANCE:Lcom/alibaba/ailabs/genie/custom/contacts/common/ut/-$$Lambda$ClickUTUtils$BLXGKiWm-cTyF3xuilUNFuP7x3o;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static callVideo()V
    .locals 1

    .line 63
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/ut/-$$Lambda$ClickUTUtils$AvnM4CxR-MImnY2iicRlGuw8Rbo;->INSTANCE:Lcom/alibaba/ailabs/genie/custom/contacts/common/ut/-$$Lambda$ClickUTUtils$AvnM4CxR-MImnY2iicRlGuw8Rbo;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static downloadApp()V
    .locals 1

    .line 39
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/ut/-$$Lambda$ClickUTUtils$VSM4iHIrGnxiTS3x0hako6l7a8A;->INSTANCE:Lcom/alibaba/ailabs/genie/custom/contacts/common/ut/-$$Lambda$ClickUTUtils$VSM4iHIrGnxiTS3x0hako6l7a8A;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static editContacts()V
    .locals 1

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/ut/-$$Lambda$ClickUTUtils$K8EOiUlh15w2y91j0DwrLDxuowU;->INSTANCE:Lcom/alibaba/ailabs/genie/custom/contacts/common/ut/-$$Lambda$ClickUTUtils$K8EOiUlh15w2y91j0DwrLDxuowU;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic lambda$addAvatar$3()V
    .locals 3

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "spm"

    const-string v2, "a1z3lt.12013402"

    .line 25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "addavatar"

    const-string v2, "AddContacts"

    .line 26
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic lambda$callAudio$9()V
    .locals 3

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "spm"

    const-string v2, "a1z3lt.12013386"

    .line 73
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "audiocall"

    const-string v2, "call_details"

    .line 74
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic lambda$callPstn$7()V
    .locals 3

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "spm"

    const-string v2, "a1z3lt.12013386"

    .line 57
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pstncall"

    const-string v2, "call_details"

    .line 58
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic lambda$callVideo$8()V
    .locals 3

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "spm"

    const-string v2, "a1z3lt.12013386"

    .line 65
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "videocall"

    const-string v2, "call_details"

    .line 66
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic lambda$downloadApp$5()V
    .locals 3

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "spm"

    const-string v2, "a1z3lt.12013386"

    .line 41
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "downloadapp"

    const-string v2, "call_details"

    .line 42
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic lambda$editContacts$4()V
    .locals 3

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "spm"

    const-string v2, "a1z3lt.12013386"

    .line 33
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "edit"

    const-string v2, "call_details"

    .line 34
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic lambda$leaveMessage$6()V
    .locals 3

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "spm"

    const-string v2, "a1z3lt.12013386"

    .line 49
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    const-string v2, "call_details"

    .line 50
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic lambda$utCallBackClick$11()V
    .locals 3

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "spm"

    const-string v2, "a1z3lt.12013448"

    .line 89
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "makecall"

    const-string v2, "Call_logs"

    .line 90
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic lambda$utDialClick$10()V
    .locals 3

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "spm"

    const-string v2, "a1z3lt.12013438"

    .line 81
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pstncall"

    const-string v2, "Call_keypad"

    .line 82
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static leaveMessage()V
    .locals 1

    .line 47
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/ut/-$$Lambda$ClickUTUtils$uYg455cZUuP2A5glYJ9pnTLfas4;->INSTANCE:Lcom/alibaba/ailabs/genie/custom/contacts/common/ut/-$$Lambda$ClickUTUtils$uYg455cZUuP2A5glYJ9pnTLfas4;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static utCallBackClick()V
    .locals 1

    .line 87
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/ut/-$$Lambda$ClickUTUtils$vTb_4K2kCULu8ATRSWdRw6PGMS0;->INSTANCE:Lcom/alibaba/ailabs/genie/custom/contacts/common/ut/-$$Lambda$ClickUTUtils$vTb_4K2kCULu8ATRSWdRw6PGMS0;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static utDialClick()V
    .locals 1

    .line 79
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/ut/-$$Lambda$ClickUTUtils$u2ZzA4Z6Hp4puXaSU_grlegKfj4;->INSTANCE:Lcom/alibaba/ailabs/genie/custom/contacts/common/ut/-$$Lambda$ClickUTUtils$u2ZzA4Z6Hp4puXaSU_grlegKfj4;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
